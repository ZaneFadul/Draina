/// @description Insert description here
// You can write your code in this editor
tracking = oPlayer;
handicam = false;
timer = -10;

if (instance_exists(tracking)){
	x = tracking.x;
	y = tracking.y;
} else {
	x = view_x;
	y = view_y;
}
