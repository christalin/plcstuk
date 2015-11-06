

jQuery(document).ready(function(){
	alert("page loaded");
    $('#calendar').mouseenter(function(){
       alert("page loaded");
    }
    $('#present').mouseleave(function(){
        $(this).fadeIn('fast',0.5);
    }
    $('#calendar').fullCalendar();

});