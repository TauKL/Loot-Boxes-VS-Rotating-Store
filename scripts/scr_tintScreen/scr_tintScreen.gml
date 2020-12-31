///Tints the screen darker to focus on the wallpaper being viewed/obtained
function scr_tintScreen(argument0, argument1, argument2) {
	colour=argument0
	alpha=argument1
	steps=argument2

	global.screenTint.image_blend=colour;
	global.screenTint.targetAlpha=alpha
	global.screenTint.originalAlpha=global.screenTint.image_alpha
	global.screenTint.alarm[0]=steps
	global.screenTint.steps=steps;
	global.screenTint.tint=true;


}
