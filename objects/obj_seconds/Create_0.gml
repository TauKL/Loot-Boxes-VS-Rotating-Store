image_speed=0;

//creating the text saying S
image_xscale=2
image_yscale=2
text=instance_create_depth(x,y,depth,obj_ASSIGNSPRITE)
text.sprite_index=spr_s;
text.image_xscale=2
text.image_yscale=2;
text.x=x+(2*sprite_width)+10
text.y=y

//creating an object for counting ones self is tens
ones=instance_create_depth(x+sprite_width+1,y,depth,obj_ASSIGNSPRITE)
ones.sprite_index=spr_numbers
ones.image_speed=0
ones.image_xscale=2
ones.image_yscale=2
ones.x=x+sprite_width+1
ones.y=y

timeLeft=0; //time left till next rotation
showTime=0; //the value to show in the timer