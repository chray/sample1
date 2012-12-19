<?php
include("connection.php");
$q = mysql_query("Delete from ppa where id='".$_GET['id']."'")or die (mysql_error());
	
	header("location:personalexp.php");
?>