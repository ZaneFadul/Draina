/// camera_handicam()
/// @description camera_handicam()
/// @param timer


var frequency = 0.1;
var amplitude = 3.87;

with(oCameraTracker){
	handicam = true;
	var origin = [x,y];
	view_x += cos((argument0+.3)*frequency)*amplitude;
	view_y += sin(argument0*frequency)*amplitude;
}
