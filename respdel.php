<?php
	include("connection.php");
	$q = mysql_query("Delete from personalservice_resp where id='".$_GET['id']."'")or die(mysql_error());
	?>
	<script type="text/javascript">
		alert('Successfully Deleted !');
	</script>
	<?php
	header("location:personalresp.php");
?>