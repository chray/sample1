<html>
<head>
<link rel="stylesheet" type="text/css" href="css/design.css ">
<link rel="stylesheet" type="text/css" href="css/g-buttons.css ">
<title>Login Page !</title>
</head>
<body>
<div id="log">
<div id="login">
<?php
if (isset($_POST['enter'])) {
include("connection.php");
$q = mysql_query("select * from user where username='".$_POST['user']."' and password='".$_POST['pass']."'");
			if 	(mysql_num_rows($q)>0){
				session_start();
				while ($row = mysql_fetch_assoc($q)){
					$_SESSION['uid'] = $row['id'];
				}	
				header("location:index.php");
				} else { ?>
				<script type="text/javascript">
				alert('Invalid Username or Password');
				</script>
	<?php			}
} else if(isset($_POST['goSignup'])){
	header("location:signup.php");
}
?>
<form action="login.php" method="post">
 <i class="icon-user"></i>Username:<input type="text" placeholder="  Type your Username . . . " value="<?php echo $_POST['user']?>"maxlength="15" name="user" style="margin-left:10px; height:40px;width:200px;"/> <br><br>
 <i class="icon-lock"></i>Password:<input type="password" placeholder="  Type your Password . . ."maxlength="15" name="pass" style="margin-left:13px; height:40px;width:200px;"/><br><br>
<input type="submit"  style="margin-left:120px;"class="g-button green" value="Enter" name="enter"/>
<input type="submit" class="g-button green" name="goSignup"value="Signup" name="sign"/>
</form>
</div>
</div>
</body>
</html>	