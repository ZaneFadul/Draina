/// @description moveCharacter
/// @param obj
/// @param x
/// @param relative?

var obj = argument0, relative = argument2;

if(x_dest == -1){
	if(!relative){
		x_dest = argument1;
	} else {
		x_dest = obj.x + argument1;
	}
}

var xx = x_dest;

with(obj){
	if(point_distance(x,0,xx,0) >= walkSpeed){
		var dir = point_direction(x, 0, xx, 0);
		var ldirx = lengthdir_x(walkSpeed, dir);
		xVel = ldirx;
	} else {
		x = xx;
		with(other){
			x_dest = -1;
			cutsceneEndAction();
		}
	}
}