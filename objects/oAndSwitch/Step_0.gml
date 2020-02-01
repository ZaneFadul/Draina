/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x-25,y,oCurrent)){
	leftOn = 1;
} else {
	leftOn = 0;
}

if(place_meeting(x+25,y,oCurrent)){
	rightOn = 1;
} else {
	rightOn = 0;
}

if(leftOn && !rightOn){
	sprite_index = sAndGateL;
	image_speed = 1;
}

if(!leftOn && rightOn){
	sprite_index = sAndGateR;
	image_speed = 1;
}

if(leftOn && rightOn){
	sprite_index = sAndGateP;
	image_speed = 1;
	instance_create_layer(x,y+20,"Instances",oCurrent);
	instance_create_layer(x,y-20,"Instances",oCurrent);
}

if(!leftOn && !rightOn){
	sprite_index = sAndGateO;
}