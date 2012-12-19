<?php include("session.php");?>
<html>
<head>
<title>Interface Option</title>
<link rel="stylesheet" type="text/css" href="css/design.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/g-buttons.css">
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.lightbox_me.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<?php
include("connection.php");
?>
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
			<?php
				require("submenu2.php");
			?>
			<div id="cont2">
			<br>
			Date: <input type="text" onmouseover="$(this).datepicker();" name="date" placeholder="Click"/>

			<a>Legal Basis: <select style="width:250px;" name="legalbasis">
			<?php
			
			$qq = mysql_query("select * from staticfund");
		        while ($rows = mysql_fetch_assoc($qq)){	
			?>
				<option value="">
					<?php echo $rows['legal_basis'];?>
				</option>
				<?php }?>
							</select></a>
			<a>Fund: <select style="width:170px;" name="fund" value="">
		        <?php
			include("onnection.php");
		        	$q = mysql_query("select * from fund");
		        	while ($row = mysql_fetch_assoc($q)){
		        ?>
		        <option value="<?php echo $row['id'];?>">
					<?php echo $row['fund']; ?>
				</option>
		        <?php } ?>
				</select>
				</a>						
				<br><br>		
				<table style="width:200px;margin-left:50px;">
				<th>Allotment Class</th> 
				</table>
			<table  style="border:3px solid #02c8b7;margin-left:50px;">
		<th>Allotment class</th>
		<th>P.P.A Details</th>
		<tr>

			<td><input type"text" name="ppadetail" value="Personal Services"readonly="true"  style="width:330px;"></td>
			<td><a href="personalexp.php"><button class="g-button red" style="-moz-border-radius:8px;"><i class="icon-remove"></i></button></a></td>
			
		</tr>

		<tr>
			<td><input type="text" value="Maintainance and other operating expenses" style="width:330px" readonly="true"></td>
			<td><a href="maintainance.php"><button class="g-button red"style="-moz-border-radius:8px;"><i class="icon-remove"></i></button></a></td>
		</tr>
		<tr>
			<td><input type="text" value="Financial Expenses" style="width:330px" readonly="true"></td>
			<td><a href="financialexp.php"><button class="g-button red"style="-moz-border-radius:8px;"><i class="icon-remove"></i></button></a></td>
		</tr>
		<tr>
			<td><input type="text" value="Capital Outlay" style="width:330px" readonly="true"></td>
			<td><a href="capital.php"><button class="g-button red" style="-moz-border-radius:8px;"><i class="icon-remove"></i></button></a></td>
		</tr>

		
			</table>
	</center>
<br>
<a> Note: Click the PPA details to create its detail.</a>
<button class="g-button red" style="margin-left:200px;-moz-border-radius:8px;"><i class="icon-trash"></i></button></a>
<br><br>
<?php
include("connection.php");
$qq = mysql_query("select * from user where id=".$_SESSION['uid']."");
while($rowss = mysql_fetch_assoc($qq)){
?>
<a>Prepared by:</a> <input type="text" name="prepared" style="width:230px;" value="<?php
echo $rowss['name']."  ".$rowss['lastname']?>"  readonly="true">
<?php } ?>
<a>Certified correct by:</a> <input type="text" name="certified" style="width:230px;"><br>

<div id="button">
<a><button class="g-button green" style="margin:-3px 0 0 25px;-moz-border-radius:8px;"><i class="icon-ok"></i></button></a>
<a href="notneeding.php"><button class="g-button red"style="-moz-border-radius:8px;" onclick="return confirm('Are you sure you want to Cancel?')" ><i class="icon-remove"></i></button></a><br>
<a style="margin-left:30px;">Save</a><a style="margin-left:8px;">Cancel</a>
</div>
			</div>	
			</div>
		<?php
		require("foot.php");
		?>
</div>
</body>
</html>