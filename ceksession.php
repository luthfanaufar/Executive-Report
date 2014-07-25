<?php
session_start();

	if(!isset($_SESSION['NIK'])){
		header('location:login.php');
	}
?>