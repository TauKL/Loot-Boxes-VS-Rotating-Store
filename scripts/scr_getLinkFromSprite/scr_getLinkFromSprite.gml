///gets the URL to the full size wallpaper from the given sprite
function scr_getLinkFromSprite(argument0) {
	//Argument0 = sprite to get link for
	linkString = ds_map_find_value(global.links,sprite_get_name(argument0));
	return linkString;


}
