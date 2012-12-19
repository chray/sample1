<?php
include('connection.php');
$q = mysql_query("select amount from ppa where id=".$_GET[id]."");
	while ($data = mysql_fetch_assoc($q)){
		echo $data['amount'];
	}