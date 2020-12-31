///Blows up the pricetag and creates the debris
function scr_blowUpPrice() {

	//explosion
	audio_play_sound(snd_openLootbox,1,0);
	eff=instance_create_depth(x,y,-100,obj_effect)
	eff.sprite_index=spr_explosion;
	eff.image_xscale=2
	eff.image_yscale=2
	eff.x=x
	eff.y=y+60
	eff.image_speed=1
	eff.alarm[0]=10/1

	//creates the debris
	for(i = 0 ; i < 15 ; i++){
		part=instance_create_depth(x,y,-99,obj_priceChunk);
		part.gravity=2;
		part.hspeed=irandom(20)-10
		part.vspeed=irandom(10)-30
		part.image_index=image_index;
	}


}
