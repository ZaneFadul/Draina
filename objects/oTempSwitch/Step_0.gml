/// @description Insert description here
// You can write your code in this editor
if(!electrified){
	if(place_meeting(x,y,oWeapon)){
		electrified = true;
	}
}

if(electrified){
	instance_create_depth(x+20,y,-13,oCurrent);
	instance_create_depth(x-20,y,-13,oCurrent);
	instance_create_depth(x,y-20,-13,oCurrent);
	instance_create_depth(x,y+20,-13,oCurrent);
}

if(electrified){
	sprite_index = sSwitchOn;
	image_speed = 1;
}

if(!electrified){
	sprite_index = sSwitchOff;
	image_speed = 0;
}

if(image_index > image_number - 1){
	electrified = false;
	sprite_index = sSwitchOff;
}