/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oWeapon)){
	electrified = true;
}

if(electrified){
	instance_create_depth(x+15,y,-13,oCurrent);
	instance_create_depth(x-15,y,-13,oCurrent);
	instance_create_depth(x,y-15,-13,oCurrent);
	instance_create_depth(x,y+15,-13,oCurrent);
}

if(!electrified){
	sprite_index = sPermSwitchOff;
	image_speed = 0;
}

if(electrified){
	sprite_index = sPermSwitchOn;
	image_speed = 1;
}