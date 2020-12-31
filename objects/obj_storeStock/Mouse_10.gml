/// @description highlight
if(global.disableInput || unlocked || obj_closePreview.visible)
return;

//shows the text saying to unlock it
status.image_alpha=1
//only shows highlight when affordable
if(scr_canAfford(quality)){
	image_blend = c_highlight
	audio_play_sound(snd_highlight,1,false);
}