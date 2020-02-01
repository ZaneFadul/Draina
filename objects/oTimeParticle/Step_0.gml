/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer)){
	x = oPlayer.x + (oPlayer.image_xscale)*20;
	y = oPlayer.y - 25;
	
	if(oPlayer.keyTimeStop && oPlayer.keyTimeStopReady){
		image_speed = 1;
	} else {
		image_index = 0;
		image_speed = 0;
		x = -1;
		y = -1;
	}
} else {
	image_index = 0;
	image_speed = 0;
	x = -1;
	y = -1;
}