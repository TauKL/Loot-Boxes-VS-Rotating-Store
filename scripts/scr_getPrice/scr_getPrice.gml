///gets the price of a wallpaper of a given quality
function scr_getPrice(argument0) {

	qual=argument0;
	compareAmount=1.99;
	if(argument0=1)
		compareAmount=2.99;
	else if(argument0=2)
		compareAmount=4.99;
	
	return compareAmount


}
