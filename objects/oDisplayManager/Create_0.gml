/// @description Insert description here
// You can write your code in this editor
ideal_width = 0;
ideal_height = 768;

before = ideal_width;

aspect_ratio = display_get_width()/display_get_height();
ideal_width = round(ideal_height * aspect_ratio);

if(ideal_width & 1){
	ideal_width++;
}

surface_resize(application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);



alarm[0] = 1;

camera = camera_create();
globalvar view_x,view_y,view_w,view_h;
view_x = 0;
view_y = 0;
view_w = ideal_width;
view_h = ideal_height;




/*for(var i = 1; i <= room_last; i++){ //PLEASE REVISIT THIS!!!!!!
	if(room_width < view_w){
		room_set_width(i,view_w); 
	}
}*/