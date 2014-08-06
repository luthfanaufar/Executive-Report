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
								
				<!-- Rekap report -->
				<div class="tab-pane fade active in" id="rekap-report">
				
				<!-- Koneksi -->
				<?php
					include "ociconnect.php";
					$sql="select EREPORT.ID, SUBUNIT.NAMA AS N, TANGGAL, KARYAWAN.NAMA AS NN, KARYAWAN.NIK from EREPORT, karyawan, subunit where EREPORT.fk_karyawan = nik and subunit.id = fk_subunit order by EREPORT.TANGGAL ASC";
					$parsesql=oci_parse($conn,$sql);
					oci_execute($parsesql);
				?>	
				
					<!-- Tabel -->
					<table class="table table-striped table-hover ">
						<thead>
							<tr class="danger">
								<th>No</th>
								<th>Tanggal</th>
								<th>NIK</th>
								<th>Nama</th>
								<th>Subunit</th>
								<th>Download</th>
							</tr>
						</thead>
						
						<!-- Load Data Ke Tabel -->
						<?php	
							$no=1;
							while ($data=oci_fetch_array($parsesql)){
							$tanggal=$data['TANGGAL'];
							$nik = $data['NIK'];
							$nama = $data['NN'];
							$sub_unit = $data['N'];
						?>
						<tbody>
							<tr class="active">
								<td><?php echo $no; ?></td>
								<td><?php echo $tanggal; ?></td>
								<td><?php echo $nik; ?></td>
								<td><?php echo $nama; ?></td>
								<td><?php echo $sub_unit; ?></td>
								<td><a href="tabelexe2.php?id=<?php echo $data['ID']; ?>">Download</a></td>
							</tr>
						<?php 
							$no++;}
						?>
						</tbody>
					</table>
				</div>
			</div>
	</div>
	
	<!-- Javascript files harus ditaruh di bawah untuk meningkatkan performa web -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>