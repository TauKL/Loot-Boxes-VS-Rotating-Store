unlocked=false; //whether this is already unlocked
quality=0; //the quality of this wallpaper
stockNumber=0; //which of the 2 wallpapers in stock this is
disabled=false; //if interactions are disabled

//prevents highlighting directly after entering room
image_blend=c_white;
stayWhite=1 

//creates the chain around the wallpaper
chain=instance_create_depth(x,y,depth-1,obj_storeStockChain)
image_xscale=0.75
image_yscale=0.75

//creates the price tag
price=instance_create_depth(x+(sprite_width/2),y,depth-2,obj_storeStockPrice)

//creates the status text telling the player if they can afford it or not
status=instance_create_depth(x+(sprite_width/2),y-100,depth-3,obj_storeStockStatusText)