 <?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	require 'header1.php';
	
	require 'path.php';
	init_cobalt();
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT service_requirement,requirement_service_name FROM requirement WHERE requirement_service_name='1' ");
	$result = $dbh_service->result;
	
	
?>
<main>
	<section class="body-layout" style="height:410px;">
			<h2>Requirements</h2>
			<table border='2'>
			<?php
				while($row = $result->fetch_assoc()) {
					extract($row);
					echo "<tr>";
					echo "<td>$service_requirement</td>";
					echo "</tr>";
				}

			?>
			</table>
			

	</section>
</main>

<?php
	require 'footer.php';
?>