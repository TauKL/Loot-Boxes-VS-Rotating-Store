///given a quality, returns whether the player can afford it or not
function scr_canAfford(argument0) {

	qual=argument0;
	compareAmount=1.99;
	if(argument0=1)
		compareAmount=2.99;
	else if(argument0=2)
		compareAmount=4.99;
	
	if(global.rotatingStoreBalance>compareAmount)
		return true;
	return false;


}
