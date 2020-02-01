/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oCutscene)){
	image_speed = 0;
} else {
	image_speed = 1;
}

if(image_index > image_number - 1) game_restart();
