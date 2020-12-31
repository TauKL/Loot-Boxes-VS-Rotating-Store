/// @description click action
if(!visible || global.disableInput)
return;

//shows the player they can not afford the loot boxes if not enough money
if(global.lootboxBalance<price){
	global.statusText.image_alpha=1;
	global.statusText.sprite_index=spr_cannotAffordText;
}
//buys lootboxes specified if the player can afford them
else{
	global.lootboxesOwned+=amount
	global.lootboxBalance-=price;
	scr_updateBalance(0);
	audio_play_sound(snd_cashRegister,1,false);
}