function scr_updateBalance(argument0) {
	//Updates the balance
	//updates the lootbox balance if 0
	if(argument0==0){
		if(instance_exists(obj_balance)){
			with(obj_balance){
				tens.image_index=floor(global.lootboxBalance/10)
				ones.image_index=global.lootboxBalance mod 10;
				decimals=((global.lootboxBalance-(floor(global.lootboxBalance)))*100)
				dotOnes.image_index=decimals/10;
				dotTens.image_index=decimals mod 10;
			}
		}
	}
	//updates the rotating store balance if 1
	else if(argument0==1){
		if(instance_exists(obj_rotatingStoreBalance)){
			with(obj_rotatingStoreBalance){
				tens.image_index=floor(global.rotatingStoreBalance/10)
				ones.image_index=global.rotatingStoreBalance mod 10;
				decimals=((global.rotatingStoreBalance-(floor(global.rotatingStoreBalance)))*100)
				dotOnes.image_index=decimals/10;
				dotTens.image_index=decimals mod 10;
			}
		}
	}


	scr_save(); //save the data


}
