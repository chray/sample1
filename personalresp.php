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
<script type="text/javascript">
	function sub_val(id){
		$.ajax({
			url:"ppa_val.php?id="+$("#ppa_").val(),
			success:function(data){
				$("#val").val(data);
			}
		});
	}
</script>
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
		<td style="text-align:center;font-size:20px;">Personal Services</td>
	<tr>
	</table>
<form action="personalresp.php" method="post">
<button style="margin-left:10px;"class="g-button blue " name="buttonresp">Responsibility Center</button>
<button style="margin-left:10px;"class="g-button blue" name="buttonppa">P.P.A</button>
<button style="margin-left:10px;"class="g-button red" onclick="return confirm('Are you sure you want to cancel?')"name="buttoncancel">Cancel</button>
<input style="margin-left:550px;width:215px;text-align:right;"readonly="true"type="text" id="val" name="exactamt" 
value="">
<br><br>
<table>
	<tr>
		<td style="text-align:center;font-size:18px;width:100px;">P.P.A.</td>
		<td style="text-align:center;font-size:18px;">Responsibility Center</td>
		<td style="text-align:center;font-size:18px;">Object of Expenditures</td>
		<td style="text-align:center;font-size:18px;">Amount</td>
		<td style="text-align:center;font-size:18px;">Action</td>
	</tr>
	<tr>
		<?php
		$pattern = "/[a-zA-Z]/";
		$match = preg_match($pattern, $_POST['amt']);	
			include("connection.php");
			if (isset($_POST['ok'])){
				if(!empty($_POST['resp'])&&!empty($_POST['object'])&&!empty($_POST['amt'])&&!empty($_POST['ppa'])){
					if($match<=0){
					
						$q = mysql_query("insert into personalservice_resp (ppa,resp,object,amt) values ('".$_POST['ppa']."','".$_POST['resp']."','".$_POST['object']."','".$_POST['amt']."')");
							?>
							<script>
								alert('Transaction Saved !');
							</script>
							<?php
					}else{
					?>
					<script>
						alert('Letters are invalid for this field');
					</script>
					<?php
					}
					
				}else{
				?>	<script>
						alert('Please fill up all fields');
					</script><?php
					}
			}else if(isset($_POST['buttonresp'])){
					header("location:personalresp.php");
			}else if(isset($_POST['buttonppa'])){
					header("location:personalexp.php");
			}else if(isset($_POST['buttoncancel'])){
					header("location:notneed.php");
			}
	
		?>
		<td style="width:100px;font-size:18px;"><select id="ppa_" onchange="sub_val()" style="width:200px;" name="ppa">
			<option></option>
			<?php
				include("connection.php");
					$qqq = mysql_query("select * from ppa");
						while($rowss = mysql_fetch_assoc($qqq)){
						?>
						<option value="<?php echo $rowss['id'];?>">
						<?php echo $rowss['ppa'];?>
						</option>
						<?php
						}
			?>
		</select></td>
		<td style="text-align:center;font-size:18px;width:200px;">
		<select style="width:200px;"name="resp">
		<option></option>
			<?php
				include("connection.php");
					$q = mysql_query("select * from responsibility_center");
						 while($row = mysql_fetch_assoc($q)){
						?>
						
							<option value = "<?php echo $row['resp_center'];?>"><?php echo $row['resp_center'];?></option>
						<?php
						}
			?>
			<option></option>
		</select></td>
		<td style="text-align:left;font-size:18px;width:150px;"><select name="object" style="width:200px;">
			
			<option></option><?php
				include("connection.php");
					$qq = mysql_query("select * from obj_exp");
						while ($rows = mysql_fetch_assoc($qq)){
						?>
							<option value="<?php echo $rows['obj_exp'];?>">
							<?php echo $rows['obj_exp'];?>
							</option>
						<?php
						}
						?>
		</select></td>
		<td style="text-align:center;font-size:18px;width:200px;"><input type="text"name="amt"style="width:120px;text-align:right;"></td>
		<td style="text-align:center;font-size:18px;"><button name="ok"class="g-button green"><i class="icon-ok"></i></button></td>
	</tr>
</table>
	<br>
	<table class="data-table"> 
	<tr>
		<th>P.P.A.</th>
		<th>Responsibility Center</th>
		<th>Object of Expenditures</th>
		<th>Amount</th>
		<th>Action</th>
	</tr>
	<tr>
		<?php
			$q = mysql_query("select * from personalservice_resp order by id desc");
				while($row = mysql_fetch_assoc($q)){
					$q2 = mysql_query("select * from ppa where id='".$row['ppa']."'");
					while ($data = mysql_fetch_assoc($q2)){
						$ppad = $data['ppa'];
					}
				?>
					<td style="text-align:center;"><?php echo $ppad;?></td>
					<td style="text-align:center;"><?php echo $row['resp'];?></td>
					<td style="text-align:center;"><?php echo $row['object'];?></td>
					<td style="text-align:center;"><?php echo $row['amt'];?></td>
					<td style="width:160px;">
					<a href="respedit.php?id=<?php echo $row['id'];?>"onclick="return confirm('Edit?')"class="g-button green"><i class="icon-pencil"></button>
					<a href="respdel.php?id=<?php echo $row['id']?>" class="g-button red"onclick="return confirm('Delete?');"><i class="icon-remove"></a></td>
	</tr>	
			<?php
				}
		?>
	</table>

			</div>	
			</div>
		<?php
		require("foot.php");
		?>
</div>
</body>
</html>