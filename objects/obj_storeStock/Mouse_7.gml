/// @description buy wallpaper

//can't buy if input is disabled, this object is disabled, already unlocked or if a wallpaper is being previewed
if(global.disableInput || disabled || unlocked || obj_closePreview.visible)
	return;

//tells the player they can't afford it if they can't
if(!scr_canAfford(quality)){
	global.statusText.image_alpha=1;
	global.statusText.sprite_index=spr_cannotAffordText;
	return;
}

//buys the wallpaper
scr_buyStoreItem()