/// @description remove highlight
if(global.disableInput || unlocked || obj_closePreview.visible)
return;

//removes status text saying to unlock it
status.image_alpha=0;
if(global.disableInput || !scr_canAfford(quality))
return;
image_blend = c_white