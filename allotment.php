<?php include("session.php");?>
<html>
<head>
<title>Interface Option</title>
<link rel="stylesheet" type="text/css" href="css/design.css">
</head>
<body>
<div id="Gwrap">
<?php
 require("head.php");
 ?>
 		<div id="Bwrap">
<?php
require("submenu.php");
?>
			<div id="content">
			<div id="cont1">
			 <ul>
				<li><a href="notneeding.php">Not Needing Clearance</a></li>
				<li><a href="allotment.php">Needing Clearance</a></li>
				<li><a href="allotment.php">Special Allotment</a></li>
			 </ul>
			</div>
			<?php
			require("cont2.php");
			?>
			</div>
		</div>
		<?php
		require("foot.php");
		?>
</div>
</body>
</html>
