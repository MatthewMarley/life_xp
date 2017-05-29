/* global $ */
$(document).on('turbolinks:load', function() {
    $('.alert').delay(4000).fadeOut(2000);
    
    var gamepoint = 0;

        $('#task6').click(function(){
        var pointvalue = parseInt($('.points6').text());
        gamepoint = gamepoint + pointvalue;
        document.getElementById("totalScore").innerHTML = gamepoint;
    }); 
    
         $('#task7').click(function(){
        var pointvalue = parseInt($('.points7').text());
        gamepoint = gamepoint + pointvalue;
        document.getElementById("totalScore").innerHTML = gamepoint;
    }); 
    
         $('#task8').click(function(){
        var pointvalue = parseInt($('.points8').text());
        gamepoint = gamepoint + pointvalue;
        document.getElementById("totalScore").innerHTML = gamepoint;
    }); 
    
         $('#task9').click(function(){
        var pointvalue = parseInt($('.points9').text());
        gamepoint = gamepoint + pointvalue;
        document.getElementById("totalScore").innerHTML = gamepoint;
    }); 
    
         $('#task10').click(function(){
        var pointvalue = parseInt($('.points10').text());
        gamepoint = gamepoint + pointvalue;
        document.getElementById("totalScore").innerHTML = gamepoint;
    }); 
    

});