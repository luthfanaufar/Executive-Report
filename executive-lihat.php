<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Executive Report</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="executive/tinymce/tinymce.min.js"></script>
	<script type="text/javascript">
	tinymce.init({
		selector: "textarea#elm1",
		theme: "modern",
		width: 300,
		height: 300,
		plugins: [
			 "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
			 "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
			 "save table contextmenu directionality emoticons template paste textcolor"
	   ],
	   content_css: "css/content.css",
	   toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | print preview media fullpage | forecolor backcolor emoticons", 
	   style_formats: [
			{title: 'Bold text', inline: 'b'},
			{title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
			{title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
			{title: 'Example 1', inline: 'span', classes: 'example1'},
			{title: 'Example 2', inline: 'span', classes: 'example2'},
			{title: 'Table styles'},
			{title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
		]
	 }); 
	</script>
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
								
				<!-- Rekap report -->
				<div class="tab-pane fade active in" id="rekap-report">
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
						<tbody>
							<tr class="active">
								<td>1</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="active">
								<td>1</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="active">
								<td>1</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="active">
								<td>1</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
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