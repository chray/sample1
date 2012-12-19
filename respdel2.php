<?php
	include("connection.php");
		$q = mysql_query("Delete from financial_resp where id='".$_GET['id']."'")or die(mysql_error());
			header("location:financialresp.php");
?>