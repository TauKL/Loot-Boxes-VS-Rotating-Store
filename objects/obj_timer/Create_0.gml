//creates the minutes timer
minutes=instance_create_depth(x,y,depth,obj_minutes)
minutes.x=x
minutes.y=y

//creates the seconds timer
seconds=instance_create_depth(x+(3*sprite_width)+50,y,depth,obj_seconds)
seconds.x=x+(3*sprite_width)+50
seconds.y=y

//get and update the timers
seconds.timeLeft=date_second_span(date_current_datetime(),global.nextRotation);
if(date_compare_time(date_current_datetime(),global.nextRotation)>=0){
	scr_rotateStock();
	seconds.timeLeft=date_second_span(date_current_datetime(),global.nextRotation);
}
minutes.timeLeft=seconds.timeLeft/60;

with(seconds)
	scr_updateTime(timeLeft)
with(minutes)
	scr_updateTime(timeLeft)

alarm[0]=room_speed/2 //checks time every half second
