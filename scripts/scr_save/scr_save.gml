function scr_save() {
	//Saves all the persistent attributes for the game
	ds_map_replace(global.unlocks,"nextRotation",global.nextRotation);
	ds_map_replace(global.unlocks,"timeStamp",date_current_datetime());
	ds_map_replace(global.unlocks,"lootboxesOwned",global.lootboxesOwned);
	ds_map_replace(global.unlocks,"lootboxBalance",global.lootboxBalance);
	ds_map_replace(global.unlocks,"rotatingStoreBalance",global.rotatingStoreBalance);
	ds_map_replace(global.unlocks,"prevStock0",global.prevStock[0]);
	ds_map_replace(global.unlocks,"prevStock1",global.prevStock[1]);
	ds_map_replace(global.unlocks,"stock0",global.stock[0]);
	ds_map_replace(global.unlocks,"stock1",global.stock[1]);

	ds_map_secure_save(global.unlocks,global.fileName);


}
