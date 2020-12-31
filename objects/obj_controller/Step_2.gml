/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_wallpaperGained) && global.lootboxBalance<1.99 && global.rotatingStoreBalance<1.99 && !global.reminded && global.lootboxesOwned<=0 && !global.viewingWallpaper && !instance_exists(obj_rememberSurveyButton)){
	scr_rememberSurvey()
}