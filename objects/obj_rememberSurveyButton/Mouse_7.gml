/// @description Click action
if(alarm[0]>0)
	return;

//sets the clipboard text and activates the fadeout of the button and text
clipboard_set_text("https://goo.gl/forms/chTc2x7xvCrjU06g2");
global.statusText.image_alpha=1;
global.statusText.sprite_index=spr_copiedToClipBoardText;
alarm[0]=40
alarm[1]=30
global.disableInput=true;