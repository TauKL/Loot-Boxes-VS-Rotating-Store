///drops in a new lootbox for the player
function scr_dropLootbox() {
	if(instance_exists(obj_lootbox)){
		with(obj_lootbox){
			if(global.lootboxesOwned>0&&y!=originalY){
				y=hiddenY;
				droppingIn=true;
				dropSpeed=10
				alarm[0]=dropSpeed
			}
		}
	}


}
