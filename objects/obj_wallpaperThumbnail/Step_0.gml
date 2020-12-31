//sets the tint of the wallpaper based un if it's unlocked
if(!scr_unlocked(sprite_index)){
	image_blend=c_greyed;
	background.image_blend=c_greyed;
}
else{
	background.image_blend=c_white;
}

//grows the size of the wallpaper
if(growing){
	image_xscale+=growingamount;
	image_yscale+=growingamount;
	x+=(middleX-basePositionX)/scaleSpeed;
	y+=(middleY-basePositionY)/scaleSpeed;
	
	text.x+=(textMidX-textX)/scaleSpeed;
	text.y+=(textMidY-textY)/scaleSpeed;
	
	text.image_xscale+=textGrowingamount;
	text.image_yscale+=textGrowingamount;
}

//shrinks the size of the wallpaper
if(shrinking){
	image_xscale-=growingamount;
	image_yscale-=growingamount;
	x-=(middleX-basePositionX)/scaleSpeed;
	y-=(middleY-basePositionY)/scaleSpeed;
	
	text.x-=(textMidX-textX)/scaleSpeed;
	text.y-=(textMidY-textY)/scaleSpeed;
	
	text.image_xscale-=textGrowingamount;
	text.image_yscale-=textGrowingamount;
}