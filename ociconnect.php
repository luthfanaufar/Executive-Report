<?php
	$conn = oci_connect('WEBBDG', 'telkom', 'localhost/XE');
	if(!$conn){
		echo "koneksi gagal";
	}
	/*else{
		echo "koneksi berhasil";
	}*/
?>