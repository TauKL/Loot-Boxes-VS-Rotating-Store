/// @description drop in finished
droppingIn=false;

//creates the puff effect when the loot box lands
eff=instance_create_depth(x,y,depth,obj_effect)
eff.sprite_index=spr_lootboxPuff;
eff.image_xscale=3
eff.image_yscale=3
eff.x=x
eff.y=y
eff.image_speed=1
eff.alarm[0]=10/1