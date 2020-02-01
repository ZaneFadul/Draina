/// @description moveCharacter
/// @param obj
/// @param y
/// @param relative?

var obj = argument0, relative = argument2;

if(y_dest == -1){
	if(!relative){
		y_dest = argument1;
	} else {
		y_dest = obj.y + argument1;
	}
}

var yy = y_dest;

with(obj){
	if(point_distance(0, y, 0, yy) >= walkSpeed){
		var dir = point_direction(0, y, 0, yy);
		var ldiry = lengthdir_y(walkSpeed, dir);
		yVel = ldiry;
	} else {
		y = yy;
		with(other){
			y_dest = -1;
			cutsceneEndAction();
		}
	}
}