$(document).ready(function(){
	//Initalizing Date Input
	var date = new Date();
	var today_hour = date.getHours();
    var today_minutes = date.getMinutes();
    var today_seconds = date.getSeconds();

    function counter(){
		var total_rows = $('.deal_hours').length;
		var count = 1;
		$('.deal_hours').each(function(){
			var deal_time = $('#deal_hours_'+count).text()+':'+$('#deal_minutes_'+count).text()+':'+$('#deal_seconds_'+count).text();
			var timer = deal_time.split(':');
		    var hours = parseInt(timer[0], 10);
		    var minutes = parseInt(timer[1], 10);
		    var seconds = parseInt(timer[2], 10);
		
		    --seconds;
		
		    minutes = (seconds < 0) ? --minutes : minutes;
		    if(hours <= 9){
		    	hours = minutes < 0 ? --hours : '0'+hours;
		    }else{
		    	hours = minutes < 0 ? --hours : hours;
		    }

		    if(hours == 0){
		        hours = '00';
		    }

		    seconds = (seconds < 0) ? 59 : seconds;
		    seconds = (seconds < 10) ? '0' + seconds : seconds;
		    minutes = (minutes < 0) ? 59 : minutes;
		    minutes = (minutes < 10) ? '0' + minutes : minutes;
		    deal_time = hours + ':' + minutes + ':' + seconds;
		    
			$('#deal_hours_'+count).text(hours);
		    $('#deal_minutes_'+count).text(minutes);
		    $('#deal_seconds_'+count).text(seconds);
			count++;
		});
	}
	
	setInterval(counter, 1000)
	counter();
});