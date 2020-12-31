/// @description Done growing or shrinking
if(growing){
	visible=false;
	wallpaperPreview.sprite_index=sprite_index;
	wallpaperPreview.visible=true;
	growing=false;
	with(obj_closePreview)
		visible=true;
	obj_copyButton.visible=true;
	obj_copyButton.spriteToCopy=sprite_index;
	
}
if(shrinking){
	preview=false;
	background.visible=true;
	shrinking=false;
}