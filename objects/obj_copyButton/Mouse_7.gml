/// @description Click action
if(!visible || global.disableInput)
return;

//shows the status text saying the link has been copied
global.statusText.image_alpha=1;
global.statusText.sprite_index=spr_copiedToClipBoardText;

//copies the link to the clipboard
clipboard_set_text(scr_getLinkFromSprite(spriteToCopy));
