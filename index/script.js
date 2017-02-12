$(document).ready(function(){
	$("button").click(function(){
		console.log($(this).attr("id"));
		sort($(this).attr("id"));
	});
});