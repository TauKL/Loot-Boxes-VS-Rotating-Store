///Unlocks the given wallpaper
function scr_unlock(argument0) {
	sprite = sprite_get_name(argument0);
	ds_map_replace(global.unlocks, sprite, true)
	scr_save()


}
