///Checks whether the given wallpaper is already unlocked
function scr_unlocked(argument0) {
	sprite = sprite_get_name(argument0);
	unlocked = ds_map_find_value(global.unlocks, sprite)
	return unlocked;


}
