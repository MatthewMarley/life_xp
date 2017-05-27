/* global $ */
$(document).on('turbolinks:load', function() {
    $('.alert').delay(4000).fadeOut(2000);
    
    var gamepoint = 0;
    
    $('#task1').click(function(){
        var pointvalue = parseInt($('.points1').text());
        gamepoint = gamepoint + pointvalue;
        document.getElementById("totalScore").innerHTML = gamepoint;
    });
    
    $('#task5').click(function(){
        var pointvalue = parseInt($('.points5').text());
        gamepoint = gamepoint + pointvalue;
        document.getElementById("totalScore").innerHTML = gamepoint;
        // alert(gamepoint);
    });
    

});