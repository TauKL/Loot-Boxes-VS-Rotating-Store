/// @description return to normal

//returns the wallpaper to normal after buy effect is done
with(obj_storeStock)
	scr_updateRotatingStoreWallpaper()
disabled=false
visible=true;
with(status)
	visible=true;
with(chain){
	visible=true;
	fall=false;
}
chain.y=y