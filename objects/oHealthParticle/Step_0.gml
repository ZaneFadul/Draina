/// @description Insert description here
// You can write your code in this editor
if(instance_exists(tracking)){
	x = tracking.x;
	y = tracking.y;
} 

if(image_index > image_number - 1){
	instance_destroy();
}