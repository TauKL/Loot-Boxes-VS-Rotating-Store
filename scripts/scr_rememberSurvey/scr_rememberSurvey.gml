function scr_rememberSurvey() {
	//reminds the user to do the survey
	global.disableInput=true;
	instance_create_depth(0,0,-995,obj_rememberSurveyTint)
	i=instance_create_depth(room_width/2,room_height/3,-996,obj_rememberSurveyText)
	instance_create_depth(i.x,i.y+(i.sprite_height/2)+40,-997,obj_rememberSurveyButton);


}
