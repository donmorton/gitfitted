$( document ).ready(function() {
    console.log( "ready!" );
    load("asdas","","");
});

function load(title, style, color){
	$(".android-content mdl-layout__content").append("<p>" + title + "</p>");

}