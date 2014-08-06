<!DOCTYPE html>
<?php
include('ceksession.php');
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Executive Report</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
</head>
<body>
	  
	<!-- Menu -->  
	<div class="navbar navbar-default">
	  <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">Telkom Indonesia</a>
	  </div>
	  <div class="navbar-collapse collapse navbar-responsive-collapse">
		<ul class="nav navbar-nav">
			<li class="dropdown;active">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Executive Report <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="executive-buat.php">Buat Report</a></li>
					<li><a href="executive-lihat.php">Lihat Report</a></li>
				</ul>
			</li>
		</ul>
		<ul class="nav navbar-nav">
			<li class="dropdown;active">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Subunit Urgent <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="subunit-buat.php">Buat Usulan</a></li>
					<li><a href="subunit-lihat.php">Lihat Usulan</a></li>
				</ul>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		  <li><a href="logout.php">Log Out</a></li>
		</ul>
	  </div>
	</div>
	<div class="container">
		
			<!-- Content -->
			<div id="myTabContent" class="tab-content">
			<form method="post" enctype="multipart/form-data" action="submit-exe.php" name="executive-form">
				
				<!-- Buat Report -->
				<div class="tab-pane fade active in" id="buat-report">
				<div class="row">
					<div class="col-xs-3">
						<div class="breadcrumb">Triwulan
							<br><input type="text" class="form-control" id="triwulan" name="triwulan">
						</div>
					</div>	
					<div class="col-xs-3">
						<div class="breadcrumb">Tahun
							<br><input type="text" class="form-control" id="tahun" name="tahun">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="breadcrumb">
						Executive Summary<br><textarea class="ckeditor" name="exsum"></textarea>
					</div>
					<div class="breadcrumb">
						Materi Bahasan<br><textarea class="ckeditor" name="maba"></textarea>
					</div>
					<div class="breadcrumb">
						Strategic Issue<br><textarea class="ckeditor" name="si"></textarea>
					</div>
					<div class="breadcrumb">
						Kegiatan Penting<br><textarea class="ckeditor" name="kepen"></textarea>
					</div>
					<div class="breadcrumb">
						Dukungan Manajemen & Rekomendasi<br><textarea class="ckeditor" name="dmr"></textarea>
					</div>
					<div class="breadcrumb">
						Lampiran<br><textarea class="ckeditor" name="lampiran"></textarea>
					</div>
				</div>
				
				<!-- Submit -->
				<div align="right">
					<input type="submit" class="btn btn-primary"  value="Submit" />
				</div>
				</div>
			</form>
			</div>
	</div>
	
	<!-- Javascript files harus ditaruh di bawah untuk meningkatkan performa web -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>