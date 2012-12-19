function showPPA(){

	$.ajax({
		url:'ppaList.php',
		success:function(data){
			$("#popup").html(data); //innerHTML = 
			$("#popup").lightbox_me({centered:true});
			$("#popup").draggable();
		}
	});
return false;
}

function getPPA(ppacode){
$("#ppaval").val(ppacode);
}