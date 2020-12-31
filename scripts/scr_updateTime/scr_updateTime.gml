///updates the timer display
function scr_updateTime(argument0) {

	showTime=floor(argument0)
	while(showTime>=60){
		showTime-=60;
	}
	image_index=floor(showTime/10)
	ones.image_index=showTime mod 10;


}
