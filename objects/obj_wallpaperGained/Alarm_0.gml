/// @description Done growing
global.disableInput=false;
growing=false;

//when done growing show the preview and close button
obj_wallpapers.preview.sprite_index=sprite_index;
obj_wallpapers.preview.visible=true;
with(obj_closePreview)
	visible=true;
//disable the wallpaper being previewed from the bottom row
with(obj_wallpaperThumbnail){
	disabled=true;
	if(sprite_index=wallpaperPreview.sprite_index){
		scr_enlargeWallpaper(1);
		text.image_xscale=2.95
		text.image_yscale=2.95
		visible=false;
	}
}
//hide self
//visible=false;
instance_destroy()

//show duplicate effect if wallpaper is already owned
if(scr_unlocked(sprite_index)){
	duplicate=instance_create_depth(x+(sprite_width/2)-((109*2.95)/2),y-(sprite_height/2),-10,obj_duplicateText)
	duplicate.image_xscale=2.95
	duplicate.image_yscale=2.95
	audio_play_sound(snd_duplicate,1,false)
}

//make "new wallpaper obtained" effect. Length of it and sound depends on quality
else{
global.screenFlash.image_alpha=1;
if(quality==1)
global.screenFlash.flashDecay=0.04;
else if (quality==2)
global.screenFlash.flashDecay=0.02;

	if(quality=0)
		audio_play_sound(snd_commonGet,1,false)
	if(quality=1)
		audio_play_sound(snd_epicGet,1,false)
	if(quality=2)
		audio_play_sound(snd_legendaryGet,1,false)
		
	//unlocks the wallpaper for the player
	scr_unlock(sprite_index)
	
	//creates the glow around it further showing its' quality
	if(instance_exists(obj_wallpaperGlow)){
		if(quality=1){
			obj_wallpaperGlow.visible=true;
			obj_wallpaperGlow.sprite_index=spr_epicGlow;
		}
		else if(quality=2){
		obj_wallpaperGlow.visible=true;
		obj_wallpaperGlow.sprite_index=spr_legendaryGlow;
		}
	}
}

