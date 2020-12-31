/// @description Click action
if(global.disableInput || !visible||global.viewingWallpaper)
return;

//goes to the loot box store
audio_play_sound(snd_forward,1,false);
room_goto(rm_buyLootboxes)