<?php include("session.php");?>
<html>
<head>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
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
<title>Interface Option</title>
<link rel="stylesheet" type="text/css" href="css/design.css">
<link rel="stylesheet" type="text/css" href="css/g-buttons.css">
<div id="popup"></div>
</head>
<body>
	<table style="margin:10px 10px 10px 10px;width:1000px;height:50px;border:1px solid black;">
	<tr>
		<td style="text-align:center;font-size:20px;">Personal Services</td>
	<tr>
	</table>
<form action="personalresp.php" method="post">
<button style="margin-left:10px;"class="g-button blue " name="buttonresp">Responsibility Center</button>
<button style="margin-left:10px;"class="g-button blue" name="buttonppa">P.P.A</button>
<input style="margin-left:550px;width:215px;text-align:right;"readonly="true"type="text" id="val" name="exactamt" 
value="">
<table style="margin:10px 10px 10px 10px;width:1000px;height:50px;border:1px solid black;">
	<tr>
		<td style="text-align:center;font-size:18px;border:1px solid black;width:300px;">P.P.A.</td>
		<td style="text-align:center;font-size:18px;border:1px solid black;">Responsibility Center</td>
		<td style="text-align:center;font-size:18px;border:1px solid black;">Object of Expenditures</td>
		<td style="text-align:center;font-size:18px;border:1px solid black;">Amount</td>
		<td style="text-align:center;font-size:18px;border:1px solid black;">Action</td>
	</tr>
	<tr>
		<?php
		$pattern = "/[a-zA-Z]/";
		$match = preg_match($pattern, $_POST['amt']);	
			include("connection.php");
			if (isset($_POST['ok'])){
				if(!empty($_POST['resp'])&&!empty($_POST['object'])&&!empty($_POST['amt'])&&!empty($_POST['ppa'])){
					if($match<=0){
					
						$q = mysql_query("insert into responsibility (ppa,resp,object,amt) values ('".$_POST['ppa']."','".$_POST['resp']."','".$_POST['object']."','".$_POST['amt']."')");
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
			}
	
		?>
		<td style="width:200px;font-size:18px;border:1px solid black;"><select id="ppa_" onchange="sub_val()" style="width:250px;" name="ppa">
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
		<td style="text-align:center;font-size:18px;border:1px solid black;width:200px;">
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
		<td style="text-align:left;font-size:18px;border:1px solid black;width:150px;"><select name="object" style="width:250px;">
			
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
		<td style="text-align:center;font-size:18px;border:1px solid black;width:300px;"><input type="text" name="amt"style="250px;"></td>
		<td style="text-align:center;font-size:18px;border:1px solid black;"><button name="ok"class="g-button green"><i class="icon-ok"></i></button></td>
	</tr>
</table>
	<br>
	<table style="margin:10px 10px 10px 10px;width:1000px;height:50px;border:1px solid black;"> 
	<tr>
		<td style="border:1px solid black;text-align:center;">P.P.A.</td>
		<td style="border:1px solid black;text-align:center;">Responsibility Center</td>
		<td style="border:1px solid black;text-align:center;">Object of Expenditures</td>
		<td style="border:1px solid black;text-align:center;">Amount</td>
		<td style="border:1px solid black;text-align:center;">Action</td>
	</tr>
	<tr>
		<?php
			$q = mysql_query("select * from responsibility");
				while($row = mysql_fetch_assoc($q)){
				?>
					<td style="text-align:center;"><?php echo $row['ppa'];?></td>
					<td style="text-align:center;"><?php echo $row['resp'];?></td>
					<td style="text-align:center;"><?php echo $row['object'];?></td>
					<td style="text-align:center;"><?php echo $row['amt'];?></td>
					<td><button class="g-button green"style="margin-right:3px;"><i class="icon-pencil"></button><button style="margin-top:3px;"class="g-button red"><i class="icon-remove"></button></td>
	</tr>	
			<?php
				}
		?>
	</table>
</body>
</form>
</html>