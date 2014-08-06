<!DOCTYPE html>
<?php
include('ceksession.php');
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Executive Report</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
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
		<form method="post" name="subunit-form" action="submit-sub.php">
		
			<!-- Buat Usulan -->
			<div class="tab-pane fade active in" id="buat-usulan">
				<div class="row">
				
					<!-- Kegiatan -->
					<div class="col-xs-3">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">Kegiatan</h3>
							</div>
							<div class="panel-body">
								Panel content
								<div class="form-group">
									<div class="col-lg-10">
										<br><textarea class="form-control" rows="20%" id="textArea" name="kegiatan"></textarea>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- Usulan -->
					<div class="col-xs-3">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">Usulan</h3>
							</div>
							<div class="panel-body">
								Panel content
								<div class="form-group">
									<div class="col-lg-10">
										<br><textarea class="form-control" rows="20%" id="textArea" name="usulan"></textarea>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- Supporting -->
					<div class="col-xs-3">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">Supporting</h3>
							</div>
							<div class="panel-body">
								Panel content
								<div class="form-group">
									<div class="col-lg-10">
										<br><textarea class="form-control" rows="20%" id="textArea" name="supporting"></textarea>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- Keterangan -->
					<div class="col-xs-3">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">Keterangan</h3>
							</div>
							<div class="panel-body">
								Panel content
								<div class="form-group">
									<div class="col-lg-10">
										<br><textarea class="form-control" rows="20%" id="textArea" name="keterangan"></textarea>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Submit dan Reset -->
				<div align="right">
					<br>
					<input type="submit" class="btn btn-primary"  value="Submit" OnClick="submitform()" /> &nbsp &nbsp
					<input type="reset" class="btn btn-primary" value="Reset" />
				</div>
				<div class="rows"><br></div>
			</div>
		</form>
		</div>
	</div>
	
	<!-- Javascript files harus ditaruh di bawah untuk meningkatkan performa web -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>