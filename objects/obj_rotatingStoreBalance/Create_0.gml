/// @description rotating store balance

//sets the active wallet to rotating store wallet
wallet=1;

//creates the numbers to show the current balance
tens=instance_create_depth(x+sprite_width,y,1,obj_number);
ones=instance_create_depth(x+sprite_width+17
,y,1,obj_number);
dot=instance_create_depth(x+sprite_width+17+17+6
,y,1,obj_ASSIGNSPRITE);
dotOnes=instance_create_depth(x+sprite_width+17+17+17
,y,1,obj_number);
dotTens=instance_create_depth(x+sprite_width+17+17+17+17
,y,1,obj_number);
dot.sprite_index=spr_dot
scr_updateBalance(wallet);