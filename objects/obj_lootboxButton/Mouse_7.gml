/// @description goto lootbox room
audio_play_sound(snd_forward,1,false);
global.disableInput=true;
room_goto(rm_lootbox)