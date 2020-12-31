///Updates the loot boxes and display
function scr_updateLootboxes() {

	//display of tens not visible when less than 10 boxes are owned
	if(global.lootboxesOwned<10)
		tens.visible=false;
	else 
		tens.visible=true;

	//calculates the correct image index for the number sprite
	tens.image_index=floor(global.lootboxesOwned/10);
	ones.image_index=floor(global.lootboxesOwned mod 10);

	//corrects the grammar from boxes to box if there is only one
	if(global.lootboxesOwned==1)
	lootboxText.image_index=1;
	else
		lootboxText.image_index=0;

	//Greys out the lootbox in the middle when none are owned
	if(global.lootboxesOwned<=0){
		image_blend=c_greyed
		image_alpha=0.2
	}
	//Otherwise it has normal colour
	else{
		image_blend=c_white
		image_alpha=1
	}


}
