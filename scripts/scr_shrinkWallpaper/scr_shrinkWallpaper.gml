function scr_shrinkWallpaper(argument0, argument1) {
	//When exiting out of the wallpaper, shrinks it back into the bottom row
	scaleSpeed=argument0;
	openOther=argument1;
	alarm[0]=argument0;
	wallpaperPreview.visible=false;
	visible=true;
	growingamount=(0.7)/argument0;
	textGrowingamount=(text.image_xscale-1)/scaleSpeed;
	shrinking=true;
	preview=true;
	image_blend=c_white
	background.visible=false;
		with(obj_closePreview)
			visible=false;
		
	if(!openOther)
		alarm[1]=scaleSpeed;


}
