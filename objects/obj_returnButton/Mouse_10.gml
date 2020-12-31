/// @description highlight
if(global.disableInput)
return; 
audio_play_sound(snd_highlight,1,false);
image_blend = c_highlight
global.disableInput=false;
global.viewingWallpaper=false;