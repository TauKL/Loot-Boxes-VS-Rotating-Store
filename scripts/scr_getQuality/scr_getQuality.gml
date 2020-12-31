///returns the quality of the given wallpaper by its' sprite
function scr_getQuality(argument0) {
	qual=0;
	switch(argument0){
		case spr_animals1:
			qual=1;
			break;
		case spr_animals2:
			qual=1;
			break;
		case spr_games2:
			qual=2;
			break;
		case spr_space1:
			qual=2;
			break;
		case spr_landscape1:
			qual=1;
			break;
		case spr_landscape2:
			qual=1;
			break;
	}
	return qual;


}
