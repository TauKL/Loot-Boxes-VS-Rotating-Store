///when the store item is clicked, this code initiates the purchase
function scr_buyStoreItem() {

	disabled=true; //disables all interactions
	scr_tintScreen(c_black, 0.8, 15) //tints the screen
	global.disableInput=true; //disables all input

	//updates the balance with the new amount
	global.rotatingStoreBalance-=scr_getPrice(quality);
	scr_updateBalance(1)

	//creates the object that displays the gained wallpaper
	wp=instance_create_depth(x,y,depth-5,obj_wallpaperGained)
	wp.sprite_index=sprite_index;
	wp.image_xscale=0.8
	wp.image_yscale=0.8
	scaleSpeed=20;
	wp.middleX=256;
	wp.middleY=428;
	wp.basePositionX=wp.x
	wp.basePositionY=wp.y
	wp.growingamount=(1-wp.image_xscale)/scaleSpeed
	wp.alarm[0]=scaleSpeed;
	wp.scaleSpeed=scaleSpeed;
	wp.quality=quality

	//creates the effect for when an item is bought with the exploding price and chain falling down
	alarm[0]=scaleSpeed
	visible=false;
	with(status)
		visible=false;
	with(chain)
		fall=true;
	with(price){
		visible=false;
		scr_blowUpPrice()
	}


}
