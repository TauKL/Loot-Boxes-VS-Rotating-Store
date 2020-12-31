/// @description enlarge preview

//does nothing if input is disabled
if(global.disableInput)
return;

//If this wallpaper is unlocked, previews it for download
if(scr_unlocked(sprite_index)&&!preview && !disabled){
	with(obj_wallpaperThumbnail){
		disabled=true;
		//closes any other active wallpaper
		if(!visible)
			scr_shrinkWallpaper(10,true);
	}
	//enlarges this wallpaper and tints the screen darker
	scr_enlargeWallpaper(15);
	scr_tintScreen(c_black, 0.8, 15)
	
	//removes any duplicate status text
	if(instance_exists(obj_duplicateText)){
		with(obj_duplicateText)
			instance_destroy();
	}
	
	//hides the quality glow and copy link button
	obj_wallpapers.previewGlow.visible=false;
	audio_play_sound(snd_forward,1,false);
	obj_copyButton.visible=false;
}