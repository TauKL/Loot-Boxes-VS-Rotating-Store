//deletes the reminder and only shows again if program is reopened
global.reminded=true;
global.disableInput=false;
with(obj_rememberSurveyTint)
	instance_destroy()
with(obj_rememberSurveyText)
	instance_destroy()
with(obj_rememberSurveyButton)
	instance_destroy()