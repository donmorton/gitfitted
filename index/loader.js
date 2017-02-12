$( document ).ready(function() {
    console.log( "ready!" );
    load("asdas","","");
});

function load(title, style, color){
	var x = ("<div class = \"cardmain\"> <div class = 'card_obj'> <div class=\"demo-card-wide mdl-card mdl-shadow--2dp\"> <div class=\"mdl-card__title\"> <h2 class=\"mdl-card__title-text\">Welcome<\/h2> <\/div> <div class=\"mdl-card__supporting-text\"> <p>Filled in by JS loop<\/p> <\/div> <div class=\"mdl-card__actions mdl-card--border\"> <a class=\"mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect\"> Fit Details <\/a> <\/div> <\/div> <\/div>\"");
	console.log(x);
	$(".cardmain").append(x);
}
