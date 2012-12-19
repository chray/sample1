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
			<div id="submenu"> 
				<ul>
					<li>Obligational Authority</li>
					<li><a href="allotment.php">Allotment</a></li>
					<li>Augmentation / Realignment</li>
					<li>Earmark</li>
					<li>Sub-Allotment</li>
					<li>Obligation</li>
					<li>Transfer of Obligational Authority Charges</li>
					<li>Re-Assign Appropriation</li>
				</ul>
			</div>
			<div id="content">
			<?php
				require("cont1.php");
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
