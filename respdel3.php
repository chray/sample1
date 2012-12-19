<?php
	include("connection.php");
		$q = mysql_query("Delete from capital_resp where id='".$_GET['id']."'")or die (mysql_error());
			header("location:capitalresp.php");
?>