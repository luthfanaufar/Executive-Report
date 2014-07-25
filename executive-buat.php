<!DOCTYPE html>
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
					<li><a href="executive-buat.html">Buat Report</a></li>
					<li><a href="executive-lihat.html">Lihat Report</a></li>
				</ul>
			</li>
		</ul>
		<ul class="nav navbar-nav">
			<li class="dropdown;active">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Subunit Urgent <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="subunit-buat.html">Buat Usulan</a></li>
					<li><a href="subunit-lihat.html">Lihat Usulan</a></li>
				</ul>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		  <li><a href="#">Log Out</a></li>
		</ul>
	  </div>
	</div>
	<div class="container">
		
			<!-- Content -->
			<div id="myTabContent" class="tab-content">
				
				<!-- Buat Report -->
				<div class="tab-pane fade active in" id="buat-report">
				<div class="row">
					<center>
					<div class="col-xs-3">
						<div class="breadcrumb">Triwulan
							<form method="post">
								<br><input type="text" class="form-control" id="triwulan" name="triwulan">
							</form>
						</div>
					</div>	
					<div class="col-xs-3">
						<div class="breadcrumb">Tahun
							<form method="post">
								<br><input type="text" class="form-control" id="tahun" name="tahun">
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="breadcrumb">
						<form method="post" action="somepage"> 
							Executive Summary<br><textarea class="ckeditor" name="exsum" ></textarea>
						</form>
					</div>
					<div class="breadcrumb">
						<form method="post"> 
							Materi Bahasan<br><textarea class="ckeditor" name="maba"></textarea>
						</form>
					</div>
					<div class="breadcrumb">
						<form method="post"> 
							Strategic Issue<br><textarea class="ckeditor" name="si"></textarea>
						</form>
					</div>
					<div class="breadcrumb">
						<form method="post"> 
							Kegiatan Penting<br><textarea class="ckeditor" name="kepen"></textarea>
						</form>
					</div>
					<div class="breadcrumb">
						<form method="post"> 
							Dukungan Manajemen & Rekomendasi<br><textarea class="ckeditor" name="dmr"></textarea>
						</form>
					</div>
					<div class="breadcrumb">
						<form method="post"> 
							Lampiran
							<br><textarea class="ckeditor" name="lampiran"></textarea>
						</form>
					</div>
				</div>
				<div align="right">
					<button type="button" class="btn btn-primary">Submit</button>
				</div>
				</div>
			</div>
	</div>
	
	<!-- Javascript files harus ditaruh di bawah untuk meningkatkan performa web -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>