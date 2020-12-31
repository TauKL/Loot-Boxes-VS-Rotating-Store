function scr_initGlobals() {
	//Macros
#macro c_greyed make_colour_rgb(100,50,50)
#macro c_highlight make_colour_rgb(150,150,150)
#macro c_unlocked make_colour_rgb(150,150,255)

	//Creates the unlocks inventory and save data
	global.unlocks=ds_map_create();
	global.rotationTime=1800

	//Adds all the wallpapers to the inventory (true means they're unlocked, false = they're not)
	//Also adds all savable data
	global.unlocks[? "spr_animals1"] = false;
	global.unlocks[? "spr_art1"] = false;
	global.unlocks[? "spr_cute1"] = false;
	global.unlocks[? "spr_games1"] = false;
	global.unlocks[? "spr_landscape1"] = false;
	global.unlocks[? "spr_space1"] = false;

	global.unlocks[? "spr_animals2"] = false;
	global.unlocks[? "spr_art2"] = false;
	global.unlocks[? "spr_cute2"] = false;
	global.unlocks[? "spr_games2"] = false;
	global.unlocks[? "spr_landscape2"] = false;
	global.unlocks[? "spr_space2"] = false;

	global.unlocks[? "lootboxesOwned"] = 0;
	global.unlocks[? "lootboxBalance"] = 10.00;
	global.unlocks[? "rotatingStoreBalance"] = 10.00;
	global.unlocks[? "prevStock0"] = -1;
	global.unlocks[? "prevStock1"] = -1;
	global.unlocks[? "stock0"] = -1;
	global.unlocks[? "stock1"] = -1;
	global.unlocks[? "nextRotation"] = scr_calculateNewRotationTime();
	global.unlocks[? "timeStamp"] = date_current_datetime();

	//loads save file
	global.fileName="data.swag"
	if(file_exists(global.fileName)){
		ds_map_destroy(global.unlocks)
		global.unlocks=ds_map_secure_load(global.fileName);
	}

	//Adds all the wallpaper URLS to a map for easy access
	global.links=ds_map_create();
	global.links[? "spr_animals1"] = "https://unsplash.com/photos/7TGVEgcTKlY";
	global.links[? "spr_art1"] = "https://unsplash.com/photos/CUY_YHhCFl4";
	global.links[? "spr_cute1"] = "https://unsplash.com/photos/s74-lwoDFOw";
	global.links[? "spr_games1"] = "https://wallpaperscraft.com/wallpaper/minecraft_background_graphics_green_21194";
	global.links[? "spr_landscape1"] = "https://unsplash.com/photos/33FlT2A83H4";
	global.links[? "spr_space1"] = "https://wallpaperscraft.com/wallpaper/planet_clouds_light_star_94996";

	global.links[? "spr_animals2"] = "https://unsplash.com/photos/aWkpMIIC5aY";
	global.links[? "spr_art2"] = "https://unsplash.com/photos/yCsk1q2Eq0o";
	global.links[? "spr_cute2"] = "https://wallpaperscraft.com/wallpaper/beaver_cute_art_127732";
	global.links[? "spr_games2"] = "https://wallpaperscraft.com/wallpaper/the_legend_of_zelda_sword_graphics_background_22303";
	global.links[? "spr_landscape2"] = "https://unsplash.com/photos/DiUz3I1iAt4";
	global.links[? "spr_space2"] = "https://wallpaperscraft.com/wallpaper/space_sky_stars_79233";

	//SETUP
	//General
	global.screenTint=instance_create_depth(0,0,0,obj_screenTint)
	global.screenTint.image_alpha=0;
	global.screenFlash=instance_create_depth(0,0,-999,obj_screenFlash)
	global.statusText=instance_create_depth(0,0,-998,obj_statusText)
	global.statusText.image_xscale=3
	global.statusText.image_yscale=3
	global.statusText.x=room_width/2;
	global.statusText.y=room_height/2-50;
	global.disableInput=false;
	global.viewingWallpaper=false;

	//Lootboxes
	global.lootboxBalance=ds_map_find_value(global.unlocks,"lootboxBalance");
	global.rotatingStoreBalance=ds_map_find_value(global.unlocks,"rotatingStoreBalance");
	global.lootboxesOwned=ds_map_find_value(global.unlocks,"lootboxesOwned");

	//Rotating Store
	global.availableStock[0]=spr_animals2
	global.availableStock[1]=spr_art2
	global.availableStock[2]=spr_cute2
	global.availableStock[3]=spr_games2
	global.availableStock[4]=spr_landscape2
	global.availableStock[5]=spr_space2

	//gets the time for the next rotation
	global.nextRotation=ds_map_find_value(global.unlocks,"nextRotation");


	//first rotation needs to consider load data
	global.firstRotation=true;

	//creates the stock variables
	global.stock[0]=ds_map_find_value(global.unlocks,"stock0");
	global.stock[1]=ds_map_find_value(global.unlocks,"stock1");

	//sets the previous stock because of first run
	global.prevStock[0]=ds_map_find_value(global.unlocks,"prevStock0");
	global.prevStock[1]=ds_map_find_value(global.unlocks,"prevStock1");

	//check if user has been reminded of survey
	global.reminded=false;

	//makes the first stock rotation
	scr_rotateStock();


}
