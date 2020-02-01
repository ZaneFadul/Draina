/// @description move camera
/// @param x
/// @param y
/// @param pan?
oCameraTracker.tracking = oCamera;
oCamera.x = oCameraTracker.tracking.x;
oCamera.y = oCameraTracker.tracking.y;
var maxSpd = 10;
var stretchFactor = 5;

if (!oCutscene.timerStarted) {
	oCutscene.timerStarted = 1;
	oCutscene.timer = current_time;
}

if(!argument2){
	oCamera.x = argument0;
	oCamera.y = argument1;
	cutsceneEndAction();
} else {
	var xx = argument0;
	var yy = argument1;
	with(oCamera){
		if(point_distance(x,y,xx,yy) <= 100){ //arc length of maxSpd * -cos(x) + maxSpd/2
			timerStarted = 0;
			if(spd > 1) {
				spd = maxSpd/2 * -cos((current_time - oCutscene.timer)/250) + maxSpd/2;
			} else {
				spd = 1;
			}
		} else {
			if(spd < maxSpd - 1) {
				spd = maxSpd/2 * -cos((current_time - oCutscene.timer)/250) + maxSpd/2;
			} else {
				spd = maxSpd;
			}
		}
		if(point_distance(x,y,xx,yy) >= spd){
			var dir = point_direction(x, y, xx, yy);
			var ldirx = lengthdir_x(spd, dir);
			var ldiry = lengthdir_y(spd, dir);
			x += ldirx;
			y += ldiry;
		} else {
			x = xx;
			y = yy;
			spd = 0;
			timer = 0;
			timerStarted = 0;
			with(other){
				cutsceneEndAction();
			}
		}	
	}
}
