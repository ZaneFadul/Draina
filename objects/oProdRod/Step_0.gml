/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oWeapon)){
	instance_destroy();
}
if(place_meeting(x,y,oPlayer)){
	//create weapon instance blah blah blah i have a cutscene already tho
	instance_create_layer(9999999,999999,"Instances",oWeapon);
	instance_destroy();
}