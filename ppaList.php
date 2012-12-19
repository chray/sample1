<table>
<?php
include("connection.php");
	$q =  mysql_query("select * from static_ppa");
		while($row=mysql_fetch_assoc($q)){
?>
	<tr>
		<td><a href="javascript:void()" onclick="getPPA('<?php echo $row['ppa'] ?>')"><?php echo $row['ppa'];?></a></td>
		<td></td>
	</tr>
	<?php } ?>
</table>