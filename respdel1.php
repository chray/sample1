<?php
	include("connection.php");
	 $q = mysql_query("Delete from maintainance_resp where id='".$_GET['id']."'")or die(mysql_error());
		header("location:maintainanceresp.php");
?>