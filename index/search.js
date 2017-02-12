$(document).ready(function() {
    $("#sample6").keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            grabtext();
        }
    });

    $("#submitter").click(function() {
        grabtext()
    });

});

function grabtext() {
    var style = $("#iStyle").val();
    var color = $("#iColor").val();
    var type = $("#iType").val();
    var color2 = $("iColor2").val();
    console.log("Searching for " + color + " " + style + " " + type);
}