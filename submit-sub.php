<?php
session_start();
include ('ociconnect.php');

$kegiatan 	 = $_POST['kegiatan'];
$usulan		 = $_POST['usulan'];
$supports 	 = $_POST['supporting'];
$ket		 = $_POST['keterangan'];
$tanggal 	 = date('Y-m-d');

$stid = oci_parse($conn,"INSERT INTO KEGIATAN (ID, KEGIATAN, USULAN, SUPPORTS, FK_KARYAWAN, KET, TANGGAL) VALUES ((select count(*) from kegiatan)+1, '$kegiatan','$usulan','$supports','$_SESSION[NIK]','$ket',TO_DATE('$tanggal','YYYY-MM-DD'))");
oci_execute($stid);

header("Location:subunit-buat.php");
?>