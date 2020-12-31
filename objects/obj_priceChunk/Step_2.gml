/// @description destroy when out of bounds
if(x>room_width+50|| x<-50 || y<-50 || y>room_height+50)
	instance_destroy()