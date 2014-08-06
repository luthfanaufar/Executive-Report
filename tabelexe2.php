<style type="text/css" media="print,screen">

@media screen {
    header.onlyprint, footer.onlyprint{
        display: none;
    }
}
@media print {
header.onlyprint {
        position: fixed; /* Display only on print page (each) */
        top: 0; /* Because it's header */
    }
    footer.onlyprint {
        position: fixed;
        bottom: 0; /* Because it's footer */
    }
}

body{
	font-family:Arial;
	}
.big1{
		font-size:50px;
		text-align:right;
		color:#800080;
		text-shadow:2px 2px #bfbfbf;
	}
.big2{
		font-size:30px;
		text-align:right;
		color:#008080;
		text-shadow:2px 2px #bfbfbf;
		margin-top:-45px;
	}

</style>
<html>
	<thead> 
		<title> aaa <img src="C:\xampp\htdocs\paktapip\Telkom.jpg" /></title>
	</head>
	<body onload="window.print()">
	<div>
		<div class="dua">
		
		<?php
			include "ociconnect.php";
			$id = $_GET['id'];
			//perintah SQL
			$sql="SELECT * FROM EREPORT WHERE ID = '$id'";
			$parsesql=oci_parse($conn,$sql);
			oci_execute($parsesql);
		?>	
		<table class="table" cellpadding="0" cellspacing="0" align="center">
		<?php	
		$data=oci_fetch_array($parsesql);
		?>	
			<br><br><br><br><br><br><br><br><br><br><br><br><br>
			<p class="big1">Laporan Triwulan-<?php echo $data['TRI']; ?> <?php echo $data['TAHUN']; ?></p>
			<p class="big2">IS Service Support Management</p>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			
			<tr><td><b>I. EXECUTIVE SUMMARY</b></td></tr>
			<tr><td><br><?php echo $data['EXSUM']; ?><br></td></tr>
			<tr><td><b>II. MATERI PEMBAHASAN</b></td></tr>
			<tr><td><br><?php echo $data['MABA']; ?><br></td></tr>
			<tr><td><b>III. STRATEGIC ISSUE</b></td></tr>
			<tr><td><br><?php echo $data['SI']; ?><br></td></tr>
			<tr><td><b>VI. KEGIATAN PENTING</b></td></tr>
			<tr><td><br><?php echo $data['KEPEN']; ?><br></td></tr>
			<tr><td><b>V. DUKUNGAN MANAJEMEN & REKOMENDASI</b></td></tr>
			<tr><td><br><?php echo $data['DMR']; ?><br></td></tr>
			<tr><td><b>VI. LAMPIRAN</b></td></tr>
			<tr><td><br><?php echo $data['LAMPIRAN']; ?><br></td></tr>
		</table>
		</div>
		<tfoot class="onlyprint">footer</footer>
	</div>
	</body>
</html>