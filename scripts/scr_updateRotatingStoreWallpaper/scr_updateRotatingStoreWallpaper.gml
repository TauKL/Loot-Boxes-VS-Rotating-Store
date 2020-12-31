///updates the wallpapers on display in the rotating store
function scr_updateRotatingStoreWallpaper() {

	//resets the attributes on the object
	sprite_index=global.stock[stockNumber];
	quality=scr_getQuality(sprite_index)
	chain.image_index=quality;
	price.image_index=quality;
	status.image_index=0
	image_blend=c_white
	price.visible=true;
	status.image_alpha=0;

	//greys it out if player can't afford it
	if(!scr_canAfford(quality)){
		image_blend=c_greyed
		status.image_index=1;
	}

	//shows it as unlocked if it is
	if(scr_unlocked(sprite_index)){
		unlocked=true;
		image_blend=c_unlocked
		price.visible=false;
		chain.image_index=3
		status.image_index=2
		status.image_alpha=1;
	}


}
