<?php
session_start();
include ('ociconnect.php');

$tri	   = $_POST['triwulan'];
$tahun	   = $_POST['tahun'];
$exsum 	 = $_POST['exsum'];
$maba	 = $_POST['maba'];
$si 	 = $_POST['si'];
$kepen 	 = $_POST['kepen'];
$dmr	 = $_POST['dmr'];
$lampiran  = $_POST['lampiran'];
$tanggal   = date('Y-m-d');

echo $kegiatan;
$stid = oci_parse($conn,"INSERT INTO EREPORT (ID,FK_KARYAWAN,EXSUM,MABA,SI,KEPEN,DMR,LAMPIRAN,TANGGAL,TRI,TAHUN) 
VALUES ((select count(*) from EREPORT)+1,'$_SESSION[NIK]', '$exsum','$maba','$si','$kepen','$dmr','$lampiran',TO_DATE('$tanggal','YYYY-MM-DD'),'$tri','$tahun')");
oci_execute($stid);

header("Location:executive-buat.php");
?>

