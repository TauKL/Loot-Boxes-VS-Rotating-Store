///When the loot box is clicked, this is the code that opens it
function scr_openLootbox() {
	audio_play_sound(snd_openLootbox,1,false); //exploison sound
	disabled=true; //disables all interactions with the lootbox while it's being opened
	scr_tintScreen(c_black, 0.8, 15) //tints the screen
	global.disableInput=true; //disables all input

	//updates the inventory with new amount of boxes
	global.lootboxesOwned-=1
	scr_updateLootboxes()

	//creates the explosion effect
	eff=instance_create_depth(x,y,-4,obj_effect)
	eff.sprite_index=spr_explosion;
	eff.image_xscale=3
	eff.image_yscale=3
	eff.x=x
	eff.y=y
	eff.image_speed=1
	eff.alarm[0]=10/1

	//rolls the quality of the item being obtained
	//the chance of a legendary is 7.41, while the chance of an epic is 18.18
	//the roll is done by multiplying the drop chance by 100 to make it a whole number, a roll of 100*100 is done and then I check which number range it's between
	//if it's less than 100*7.41, it's legendary, if between 100*7.41 and 100*18.8 it's epic, otherwise it's of common quality.
	//irandom generates a number between 0 and n including both, so the number generated is subtracted by 1
	quality=0;
	loot=0;
	randomize();
	r=irandom(10000)
	r-=1;
	if(r<=741)
		quality=2;
	else if(r>741 && r<=2559)
		quality=1;

	//rolls which item of that quality
	if(quality==0)
		loot=irandom(2)
	else if (quality==1)
		loot=irandom(1)+3
	else
		loot=5
	
	//creates the object that displays the gained wallpaper
	wp=instance_create_depth(x,y,-2,obj_wallpaperGained)
	wp.sprite_index=obj_wallpapers.wallpapers[loot];
	wp.image_xscale=0.5
	wp.image_yscale=0.5
	wp.x=x-(wp.sprite_width/2)
	scaleSpeed=20;
	wp.middleX=256;
	wp.middleY=428;
	wp.basePositionX=wp.x
	wp.basePositionY=wp.y
	wp.growingamount=(1-wp.image_xscale)/scaleSpeed
	wp.alarm[0]=scaleSpeed;
	wp.scaleSpeed=scaleSpeed;
	wp.quality=quality


	//lets the lootbox fall down if more are owned
	if(global.lootboxesOwned>0)
		y=hiddenY
	else
		image_blend=c_greyed


}
