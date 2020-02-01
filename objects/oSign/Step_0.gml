/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oPlayer)){
	if(myTextbox == noone){
	myTextbox = instance_create_depth(x,y,-19,oSignTextbox);
	myTextbox.text = text;
	}
} else {
	instance_destroy(myTextbox);
	myTextbox = noone;
}