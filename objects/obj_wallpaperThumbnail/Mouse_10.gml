/// @description highlight
if(global.disableInput)
return;
if(scr_unlocked(sprite_index)&&visible&&!disabled){
	image_blend = c_highlight
audio_play_sound(snd_highlight,1,false);
}