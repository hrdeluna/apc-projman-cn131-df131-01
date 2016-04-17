

<?php
$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header.php';
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT bulletin_name,bulletin_description,file_document FROM bulletin WHERE category='information' ");
	$result = $dbh_service->result;
	

?>
<main>
	<section class="body-layout">
		<h3><center>Your registration will go through verification process<br>
			we will just notify when you are officially registered to the system
		<h3></center>
			<br>
		<a href="main.php"><center>Continue</center></a>

</main>

<?php

require 'footer.php';

?>

