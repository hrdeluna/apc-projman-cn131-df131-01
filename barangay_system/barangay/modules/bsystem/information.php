<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT bulletin_id,bulletin_name,bulletin_description,file_document FROM bulletin WHERE category in ('education','health')  ");
	$result = $dbh_service->result;
	
	
?>
<main>
<div class="block-body">
			<center><h1>Education</h1></center>
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

			<!--<?php
				
				while($row = $result->fetch_assoc()) {
					extract($row);
					/*echo "<br>";
					echo "<tr><td><h2>$bulletin_name</h2><td>";
					echo "<td>$bulletin_description<br></td>";
					echo "<td><img width='500px' height='200px'src='wash.png'></td></tr>";*/
					echo "<div class='home-layout info'>";
					echo "<div class='descript-info'>";
					echo "<h2>$bulletin_name</h2>";
					echo "<p class='proj-descript'>$bulletin_description<br></p>";
					echo "</div>";
					echo "</div>";
				}

			?>-->
			
		<!--</table>-->	

	</div>


</main>

<?php
	require 'footer.php';
?>