//reenables input after clicking copy
if(!global.reminded)
	global.disableInput=true
else
	global.disableInput=false;

//fading out
if(fading){
	image_alpha-=0.1
	with(obj_rememberSurveyTint)
		image_alpha-=0.1
	with(obj_rememberSurveyText)
		image_alpha-=0.1
}
//fading in
if(fadein){
		image_alpha+=0.1
	with(obj_rememberSurveyTint)
		image_alpha+=0.1
	with(obj_rememberSurveyText)
		image_alpha+=0.1
}
//if already faded in, stop
if(image_alpha>=1)
	fadein=false;