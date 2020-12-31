function scr_enlargeWallpaper(argument0) {
	//Enlarges the wallpaper and centers it for easier viewing
	scaleSpeed=argument0;
	alarm[0]=argument0;
	alarm[1]=argument0;
	growingamount=(1-image_xscale)/argument0;
	textGrowingamount=0.15-image_xscale/argument0;
	growing=true;
	preview=true;
	image_blend=c_white
	background.visible=false;
	global.viewingWallpaper=true;


}
