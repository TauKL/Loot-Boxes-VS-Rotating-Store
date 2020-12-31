/// @description Click action
if(global.disableInput || !visible||global.viewingWallpaper)
return;

//opens the lootbox
if(global.lootboxesOwned>0){
	with(obj_lootbox)
		scr_openLootbox();
}