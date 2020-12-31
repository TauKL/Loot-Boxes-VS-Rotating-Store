
//prevents highlighting if mouse cursor is on it when entering the room
if(stayWhite>0){
	stayWhite-=1
	image_blend=c_white
	if(!scr_canAfford(quality))
		image_blend=c_greyed
	if(scr_unlocked(sprite_index))
		image_blend=c_unlocked
}