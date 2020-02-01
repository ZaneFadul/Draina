/// @description Insert description here
// You can write your code in this editor
if (instance_exists(tracking)){
	x = tracking.x;
	y = tracking.y;
} else {
	x = view_x;
	y = view_y;
}
 
if(instance_exists(oEnemy)){
	if(oEnemy.state == "ATTACK"){
		camera_handicam(timer);
		timer += 1;
	} else {
		handicam = false;
		timer = 0;
	}
} else {
	handicam = false;
	timer = 0;
}
