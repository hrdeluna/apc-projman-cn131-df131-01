

<!DOCTYPE html>
<html>
<head>
	<title><?php echo $page_title; ?></title>
	
	<link rel="stylesheet" type="text/css" href="css/style_about.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="css/<?php echo $stylesheet_link; ?>.css"/>
	<link rel="stylesheet" type="text/css" href="css/responsive.css"  media="screen and (max-width: 900px)"/>

</head>

<body>
	<div class="wrapper ">
		<header class="header">
			<ul>
				<li class="logout"><font color='white'><b>You are logged in as </font> <font color='red'><?php echo htmlentities($_SESSION['user'], ENT_COMPAT, MULTI_BYTE_ENCODING);?> </font></b>
				<a href="main.php">Log Out</a></li>
			</ul>
			<a href="home.php"><img class="logo" src="images/logo1.png">
			<font class="font title">Barangay System</font></a>

			<ul>
				
        
				

				<li><a href="home.php">Home</a></li>
				<li><a href="documents.php">Documents</a></li>
				<li><a href="information.php">Information</a></li>
				<li><a href="about.php">About</a></li>
				<li><a href="contact.php">Contact Us</a></li>
				

			</ul>
		</header>
	</div>

