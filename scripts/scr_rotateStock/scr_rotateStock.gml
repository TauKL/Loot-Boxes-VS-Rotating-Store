function scr_rotateStock() {
	//randomises the seed and stores previous rotation
	if(date_compare_time(date_current_datetime(),global.nextRotation)>=0){
		global.nextRotation=scr_calculateNewRotationTime()
		global.firstRotation=false;
	}
	if(!global.firstRotation){
		randomize();
		//Roll first item
		stockPick[0]=irandom(5);
		while(stockPick[0] == global.prevStock[0] || stockPick[0] == global.prevStock[1])
			stockPick[0]=irandom(5);
		global.stock[0]=global.availableStock[stockPick[0]];

		//Roll second item
		stockPick[1]=irandom(5);
		while(stockPick[1]==global.prevStock[0] || stockPick[1] == global.prevStock[1] || stockPick[1] == stockPick[0])
			stockPick[1]=irandom(5)
		global.stock[1]=global.availableStock[stockPick[1]]

		//updates the previous stock indexes
		global.prevStock[0]=stockPick[0]
		global.prevStock[1]=stockPick[1]

	
	}
	//update the available wallpapers
	if(instance_exists(obj_storeStock)){
		with(obj_storeStock)
			scr_updateRotatingStoreWallpaper()
	}
	global.firstRotation=false;
	scr_save();


}
