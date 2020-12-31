///Calculates when the next rotation is due
function scr_calculateNewRotationTime() {
	return date_inc_second(date_current_datetime(),global.rotationTime);


}
