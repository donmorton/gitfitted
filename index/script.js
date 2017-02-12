$(document).ready(function(){
	$("button").not("#view-source").click(function(){
		console.log($(this).attr("id"));
		sort($(this).attr("id"));
	});
});