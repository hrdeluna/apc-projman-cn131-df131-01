<?php

	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT bulletin_name,bulletin_description,file_document FROM bulletin WHERE bulletin_id = '$_GET[b]'");
	$result = $dbh_service->result;

?>
<main>

<div class="block-body">
			<center><font size='25px'>EVENTS</font></center><br/><br/>
		
			<?php
				while($row = $result->fetch_assoc()) {
					extract($row);
				
					echo "<h2>$bulletin_name</h2><br/>";
					echo "<img class='showimg' src='../../tmp/$file_document'/><br><br><br>";
					echo "<p>$bulletin_description<br></p>";
					
				}

			?>
			
		<!--</table>-->	

	</div>


</main>

<?php
	require 'footer.php';
?>