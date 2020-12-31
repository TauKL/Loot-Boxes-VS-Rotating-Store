/// @description Click action
if(global.disableInput)
return; 

//returns screen tint to normal and goes to the preview menu
global.screenTint.image_alpha=0;
audio_play_sound(snd_back,1,false);
global.disableInput=true;
if(room=rm_lootbox)
	room_goto(rm_menu)
else if(room=rm_buyLootboxes)
	room_goto(rm_lootbox)
else if(room=rm_rotatingStore)
	room_goto(rm_menu)
	