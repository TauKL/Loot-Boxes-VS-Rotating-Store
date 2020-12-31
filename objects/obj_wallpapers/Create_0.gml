/// @description Initialises wallpapers
//Initialises the bottom row of wallpapers with the appropriate ones for the current menu
scalefactor=0.3;
if(room==rm_lootbox){
	wallpapers[0]=spr_games1;
	wallpapers[1]=spr_art1;
	wallpapers[2]=spr_cute1;
	wallpapers[3]=spr_animals1;
	wallpapers[4]=spr_landscape1;
	wallpapers[5]=spr_space1;
}
else{
	wallpapers[0]=spr_space2;
	wallpapers[1]=spr_art2;
	wallpapers[2]=spr_cute2;
	wallpapers[3]=spr_landscape2;
	wallpapers[4]=spr_animals2;
	wallpapers[5]=spr_games2;
}

//Creates the preview and quality glow and hides them from view
preview=instance_create_depth(256,428,-3,obj_wallpaperPreview);
preview.visible=false;
previewGlow=instance_create_depth(256,428,-2,obj_wallpaperGlow);
previewGlow.visible=false;

//creates the row of wallpapers at the bottom and an outline for each
for(i=0;i<6;i++){
	in= instance_create_depth(20+(i*room_width/7)+(i*20),room_height-20,-2,obj_wallpaperThumbnail);
	in.sprite_index=wallpapers[i]
	in.image_xscale=scalefactor;
	in.image_yscale=scalefactor;
	in.basePositionX=in.x;
	in.basePositionY=in.y;
	txt= instance_create_depth(32+(i*room_width/7)+(i*20),room_height-132,-2,obj_wallpaperText);
	in.text=txt
	in.textY=in.y;
	in.textX=in.x;
	if(i>=3&&i<=4){
	txt.image_index=1
	}
	if(i>4){
	txt.image_index=2
	}
	
	bg= instance_create_depth(20+(i*room_width/7)+(i*20),room_height-20,-1,obj_wallpaperThumbnailBackground);
	bg.sprite_index=spr_thumbnailBackground
	bg.image_xscale=scalefactor;
	bg.image_yscale=scalefactor;
	in.background=bg;
	in.wallpaperPreview=preview;
}