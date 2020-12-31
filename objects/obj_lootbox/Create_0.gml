
//creates the text saying loot boxes below the lootbox
lootboxText=instance_create_depth(x-40,y+10,0,obj_ASSIGNSPRITE);
lootboxText.sprite_index=spr_lootboxText
lootboxText.image_speed=0;

//creates the numbers showing how many there are
ones=instance_create_depth(x-70,y+10,0,obj_number);
tens=instance_create_depth(x-85,y+10,0,obj_number);

originalY=y; //base position in the middle
hiddenY=-300 //position when ready to drop in a new one
droppingIn=false; //whether it's currently dropping in

//if any are owned, moves high up so it can drop in
if(global.lootboxesOwned>0){
y=hiddenY;
alarm[1]=1;
}

scr_updateLootboxes();
