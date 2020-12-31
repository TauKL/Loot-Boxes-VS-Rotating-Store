/// @description highlight
if(global.disableInput||global.viewingWallpaper)
return;

//highlights only if any lootboxes are owned
if(global.lootboxesOwned>0){
audio_play_sound(snd_highlight,1,false);
image_blend = c_highlight
}