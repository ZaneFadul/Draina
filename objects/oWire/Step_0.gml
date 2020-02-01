/// @description Insert description here
// You can write your code in this editor
depth = -4;
if(electrified){
}

if(!electrified){
	sprite_index = sWireVOff;
	image_speed = 0;
}

if(electrified){
	sprite_index = sWireUOn;
	image_speed = 2;
}

if(image_index > image_number - 1){
	electrified = false;
}

if(burnt){
	var part = instance_place(x,y,oCurrent)
	if(instance_exists(part)){
		instance_destroy(part);
	}
}