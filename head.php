<?php include("session.php");?>
<html>
<head>
<title>Interface Option</title>
<link rel="stylesheet" type="text/css" href="css/design.css">
</head>
	<div id="Hwrap">
			<div id="title">
			<img src="image/logo.bmp"></img>
			<a>Budget System</a>
			</div>
			<div id="menu">
				<ul>
					<?php
					include("connection.php");
					$qq = mysql_query("select * from user where id=".$_SESSION['uid']."");
					while($rowss = mysql_fetch_assoc($qq)){

					
					?>
					<i style="float:left;color:black;margin-right:5px;">Welcome</i>
					<span style="color:black;margin-right:50px;float:left;"><?php echo $rowss['name'];?></span><?php } ?>
					<li><a href="index.php" style="float:left;">System Setup</a></li>
					<li><a href="Transaction.php" style="float:left;">Transaction</a></li>
					<li><a href="index.php" style="float:left;">Query </a></li>
					<li><a href="index.php" style="float:left;">Report</a></li>
					<li><a href="index.php" style="float:left;">Utility</a></li>
					<li><a href="logout.php" style="float:left;">Logout</a></li>
				</ul>
			</div>
		</div>
</html>