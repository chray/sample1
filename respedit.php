<html>
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
if (isset($_POST['save'])){
	if (empty($_POST['editppa'])&&empty($_POST['editamt'])){
		echo "empty field";
	}else{
$q = mysql_query("Update personalservice_resp set ppa='".$_POST['editppa']."',resp='".$_POST['editresp']."',object='".$_POST['editobj']."' amt='".$_POST['editamt']."' where id='".$_POST['ppaid']."'");	
	if ($q){
		header("location:personalresp.php");
			}		
		}
	}
?>
<form action="respedit.php" method="post">
<input type="hidden" name="ppaid" value="<?php echo $_GET['id']?>"/>
<?php
$qq = mysql_query("Select * from personalservice_resp where id='".$_GET['id']."'")or die(mysql_error());
while ($row=mysql_fetch_assoc($qq)){
	$q2 = mysql_query("Select * from ppa where id='".$row['ppa']."'");
		while($data=mysql_fetch_assoc($q2)){
		$ppa = $data['ppa'];
		}
?>
<input type="text" id="ppaval"placeholder="<?php echo $ppa;?>"readonly="true" name="editppa"style="margin-left:5px;width:250px;"><button style="margin-left:5px;" onclick="return showPPA()"class="g-button blue">...</button>
<input type="textbox" name="editresp"placeholder="<?php echo $row['resp'];?>"><br>
<input type="textbox" name="editobj"placeholder="<?php echo $row['object'];?>"><br>
<input type="textbox" name="editamt"placeholder="<?php echo $row['amt'];?>"><br>
<button name="save"class="g-button green"><i class="icon-ok"></i></button><button name="cancel" class="g-button red"><i class="icon-remove"></i></button>
<?php }?>
</form>
</html>
