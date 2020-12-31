/// @description update the timers

//check if the time is up reroll stock if it is
seconds.timeLeft=date_second_span(date_current_datetime(),global.nextRotation);
if(date_compare_time(date_current_datetime(),global.nextRotation)>=0){
	scr_rotateStock();
	seconds.timeLeft=date_second_span(date_current_datetime(),global.nextRotation);
}
minutes.timeLeft=seconds.timeLeft/60;

//update the timers with new time
with(seconds)
	scr_updateTime(timeLeft)
with(minutes)
	scr_updateTime(timeLeft)

alarm[0]=room_speed //reset alarm