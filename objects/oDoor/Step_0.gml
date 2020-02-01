/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oCurrent)){
	electrified = true;
}

if(!electrified){
	if(sprite_index == sDoorUnlocked){
		sprite_index = sDoorClose;
		image_speed = 1;
	}
	if(sprite_index == sDoorClose && image_index > image_number - 1){
		sprite_index = sDoorLocked;
	}
}

if(electrified){
	sprite_index = sDoorUnlocked;
	image_speed = 1;
	instance_create_depth(x+35,y,-13,oCurrent);
	instance_create_depth(x-35,y,-13,oCurrent);
	instance_create_depth(x,y-35,-13,oCurrent);
	instance_create_depth(x,y+35,-13,oCurrent);
}

if(electrified && image_index > image_number - 1){
	instance_destroy();
	electrified = false;
	image_speed = 0;
}