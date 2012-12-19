<?php
session_start();
if (!isset($_SESSION['uid'])||$_SESSION['uid']==""){
	header("location:login.php");
	session_destroy();
} 
?>