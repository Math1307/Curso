$(document).ready(function() {
	console.log('JQUERY LOADED!');
	
	var senha = $('#senha');
	var olho = $('#olho');
	
	olho.mousedown(function() {
		senha.attr("type", "text");
	});
	
	olho.mouseup(function() {
		senha.attr("type", "password");
	});
	
	olho.mouseout(function() {
		senha.attr("type", "password");
	});
	
	var isOnline = navigator;
});