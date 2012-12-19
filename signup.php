<html>	
<head>
<link rel="stylesheet" type="text/css" href="css/design.css ">
<link rel="stylesheet" type="text/css" href="css/g-buttons.css ">
<title>Sign up Page !</title>
</head>
<body>
<?php 
	if (isset($_POST['goLogin'])){
	header("location:login.php");
	}
?>
<form action="signup.php" method="post">
<div id="signup">
<div id="signupc">
<?php
include("connection.php");
	if(isset($_POST['enter'])){
		if(!empty($_POST['name'])&&!empty($_POST['lastname'])&&!empty($_POST['user'])&&!empty($_POST['pass'])&&!empty($_POST['pass1'])){
			if($_POST['pass'] == $_POST['pass1']){
				$r = "insert into user (username,password,lastname,name) values ('".$_POST['user']."','".$_POST['pass']."','".$_POST['lastname']."','".$_POST['name']."')";
				$q = mysql_query($r);
				header("location:login.php");
			}else{ ?>
			<script type="text/javascript">
			alert('Password not match');
			</script>
		<?php	}
		}else{ ?>
		<script type="text/javascript">
			alert('Fill out the required fields!');
			</script>
		<?php }
	}else{
	
	}
?>
<i class="icon-user"></i>Name:<input type="text" placeholder="Type your Firstname"value="<?php echo $_POST['name']?>" maxlength="15"name ="name" style="margin-left:95px; height:40px;width:200px;"></input><br><br>
<i class="icon-user"></i>Lastname:<input type="text" placeholder="Type your Lastname"value="<?php echo $_POST['lastname']?>" maxlength="15"name ="lastname" style="margin-left:70px; height:40px;width:200px;"> </input><br><br>
<i class="icon-user"></i>Username:<input type="text" placeholder="Type your Username"value="<?php echo $_POST['user']?>" maxlength="15"name ="user" style="margin-left:67px; height:40px;width:200px;"> </input><br><br>
<i class="icon-lock"></i>Password:<input type="password" placeholder="Type your Password"maxlength="15"name ="pass" style="margin-left:70px; height:40px;width:200px;"></input><br><br>
<i class="icon-lock"></i>Re-type Password:<input type="password" placeholder="Re-type your Password"maxlength="15"name ="pass1" style="margin-left:13px; height:40px;width:200px;"></input><br><br>
<i style="font-size:12px;float:left;">Note: All fields are required to answer.</i><br>
<input type="submit"style="margin-left:100px;" name="enter"class="g-button green" value="Enter" onclick="check()"></input>
<input name="goLogin" type="submit" class="g-button red" onclick="return confirm('Are you sure you want to Cancel?')"value="Cancel" />
</form>
</div>
</div>

</body>
</html>	