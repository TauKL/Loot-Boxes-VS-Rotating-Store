/// @description highlight
if(global.disableInput||global.viewingWallpaper)
return;

//only highlights if any are owned
if(global.lootboxesOwned>0){
audio_play_sound(snd_highlight,1,false);
image_blend = c_highlight
}