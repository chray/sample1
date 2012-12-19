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
<div id="popup"></div>	
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
			<div id="cont2" style="overflow-y:scroll;">
<table style="margin:4px 4px 4px 4px;width:800px;height:50px;">
	<tr>
		<td style="text-align:center;font-size:20px;">Capital Outlay</td>
	<tr>
</table>
		<form method="post" action="capital.php">
<button style="margin-left:10px;"class="g-button blue " name="buttonresp1">Responsibility Center</button>
<button style="margin-left:10px;"class="g-button blue" name="buttonppa1">P.P.A</button>
<button style="margin-left:10px;"class="g-button red" name="buttoncancel1" onclick="return confirm('Are you sure you want to cancel?')">Cancel</button>
<table style="margin:4px 4px 4px 4px;width:800px;height:50px;">
	<tr>
		<td style="text-align:center;font-size:18px;">P.P.A.</td>
		<td style="text-align:center;font-size:18px;">Amount</td>
		<td style="text-align:center;font-size:18px;">Action</td>
	</tr>
	<tr>
	<?php
	$pattern = "/[a-zA-Z]/";
	$match = preg_match($pattern, $_POST['amt']);
	include("connection.php");
		if(isset($_POST['save'])){
			if(!empty($_POST['ppa'])&&!empty($_POST['amt'])){
				if ($match<1){
			$q = mysql_query("select * from ppa where ppa='".$_POST['ppa']."'");
			if (mysql_num_rows($q)>0){
			?>
				<script>
					alert('PPA code already exist');
				</script>
				<?php	
				}else{
			include("connection.php");
			$qq = mysql_query("insert into ppa (ppa,amount) values ('".$_POST['ppa']."','".$_POST['amt']."')");
				?>
				<script>
					alert('P.P.A. successfully save !');
				</script>
				
				<?php	
				}
				}else{
				?>	<script>
					alert('Please input a number only')
					</script>
				
				<?php
				}
			}else{?>
			<script>
				alert('Please fill up all the fields')
			</script>
				<?php
		}
		}else if (isset($_POST['buttonresp1'])){			
			header("location:capitalresp.php");
		}else if (isset($_POST['buttonppa1'])){
			header("location:capital.php");
		}else if(isset($_POST['buttoncancel1'])){
			header("location:notneed.php");
		}
	
	?>
		<td style="text-align:center;font-size:18px;"><input type="text" id="ppaval"readonly="true" name="ppa"style="margin-left:5px;width:250px;"><button style="margin-left:5px;"onclick="return showPPA()"class="g-button blue">...</button></td>
		<td style="text-align:center;font-size:18px;"><input type="text" name="amt"placeholder="0.00"style="width:300px;text-align:right;"></td>
		<td style="text-align:center;font-size:18px;"><button name="save"style="margin-left:10px;"class="g-button green"><i class="icon-ok"></i></button></td>
		</form>
	</tr>
</table>
<br><br>		
<table class="data-table">
	<tr>
		<th>PPA</th>
		<th>Amount</th>
		<th>Actions</th>
	</tr><?php
	$query = mysql_query("select * from ppa");
	while ($data = mysql_fetch_assoc($query)){
	?>
	<tr>
		<td style="text-align:center;width:450px;"><?php echo $data['ppa']; ?></td>
		<td style="text-align:center;width:350px;"><?php echo $data['amount'];?></td>
		<td style="text-align:center;width:250px;">
		<a href="edit3.php?id=<?php echo $data['id']?>"onclick="return confirm('Edit?');"class="g-button green"><i class="icon-pencil"></i></a>
		<a href="delete3.php?id=<?php echo $data['id']?>" class="g-button red" onclick="return confirm('Delete?');"><i class="icon-remove"></i></a></td>
	</tr>
	<?php } ?>
</table>
			</div>	
			</div>
		<?php
		require("foot.php");
		?>
</div>
</body>
</html>