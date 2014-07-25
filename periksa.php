<?php
session_start();

$conn = oci_connect('WEBBDG', 'telkom', 'localhost/XE');

$nik 		= $_POST['nik'];
$password 	= $_POST['password'];

$query	= oci_parse($conn, "SELECT * FROM karyawan WHERE NIK = '$nik' AND password = '$password'");
$cek    = oci_execute($query);
$row 	= oci_fetch_all($query,$conn);
  
if($row>=1){
	$_SESSION['NIK']= $_POST['nik'];
	ob_start();
	header("Location:mainmenu.php");
}else{
	$_SESSION['INFO']="Username Dan Password Salah";
	//echo "<script>alert('Username / Password salah');window.location='login.php'</script>";
	header("Location:login.php");
}
?>