<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT bulletin_id, bulletin_name,bulletin_description,file_document FROM bulletin WHERE category='information' ");
	$result = $dbh_service->result;

	$dbh_service->execute_query("SELECT bulletin_id,file_document FROM bulletin WHERE category='Main Event' ORDER BY bulletin_id DESC ");
	$result1 = $dbh_service->result;
?>
<main>

<div class="block-body">
			<center><font size='25px'>EVENTS</font></center>
			<center><div class="main-headline">
				<?php
				if($row1 = $result1->fetch_assoc()) {
					echo "<a href='showmore.php?b={$row1['bulletin_id']}'><img width='800px' class='headline' src='../../tmp/{$row1['file_document']}'></a>";
				}
					?>
			<!--<img width='800px' class="headline" src='event.jpg'>-->
			</div></center><br><br>
			
		<!--<table border=3 width='1000px' >-->
			<?php
				while($row = $result->fetch_assoc()) {
					extract($row);
					
					if(strlen($bulletin_description) < 100)
					{
						//do nothing
					}
					else
					{
						$bulletin_description = substr($bulletin_description, 0, 99);
						$bulletin_description .= "&hellip;";
						$bulletin_description .= '<p><a href="showmore.php?b=' . $bulletin_id . '">[Show more]</a></p>';
					}
			
					echo "<div class='home-layout home'>";
					echo "<div class='descript'>";
					echo "<h2>$bulletin_name</h2>";
					echo "<img class='homeimg' src='../../tmp/$file_document' >";
					echo "<p class='proj-descript'>$bulletin_description<br></p>";
					echo "</div>";
					echo "</div>";
				
				}

			?>
			
		<!--</table>-->	

	</div>


</main>

<?php
	require 'footer.php';
?>