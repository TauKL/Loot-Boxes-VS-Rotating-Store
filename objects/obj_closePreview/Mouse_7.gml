/// @description close the wallpaper

//does nothing if input is disabled or the object is invisible
if(global.disableInput || !visible)
return;

//Shrinks all wallpapers being previewed (should only be one)
with(obj_wallpaperThumbnail){
			disabled=true;
			if(!visible){
				scr_shrinkWallpaper(10, false);
				preview=false;
				}
}

//if the previewed wallpaper was a duplicate, delete the text telling the player this
if(instance_exists(obj_duplicateText)){
	with(obj_duplicateText)
		instance_destroy();
}

//sets the values back
obj_wallpapers.previewGlow.visible=false; //removes the quality glow
scr_tintScreen(c_black,0,10) //tints the screen back to normal
global.viewingWallpaper=false; //no longer viewing a wallpaper
scr_dropLootbox(); //drops a lootbox if in that menu
audio_play_sound(snd_back,1,false); //plays the back sound
obj_copyButton.visible=false; //removes the "copy link" button