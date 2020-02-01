/// @description Insert description here
// You can write your code in this editor
var current = instance_place(x,y,oCurrent);
if(instance_exists(current)){
	instance_destroy(current);
	if(!discharge) charge += 1;
}

if(discharge && charge > 0) charge -= 1;

if(charge == 0){
	sprite_index = sBattery;
	discharge = false;
}

if(!discharge && charge > 0){
	sprite_index = sBatteryCharge;
}
	
if(charge == chargemax){
	sprite_index = sBatteryDischarge;
	discharge = true;
}

image_speed = charge/5;
