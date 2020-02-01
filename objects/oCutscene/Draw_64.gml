/// @description Insert description here
// You can write your code in this editor
if(draw){
	if(fade){
		draw_set_alpha(alpha);
	}
	draw_set_color(c_black);
	draw_rectangle(-30,-30,view_w+30,view_h+30,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}

if(array_length_1d(sceneInfo) > 2){
draw_set_color(c_black);



draw_rectangle(-1,-1,view_w+1,rect1,false);
draw_rectangle(-1,rect2, view_w+1, view_h, false);
draw_set_color(c_white);
draw_set_alpha(1);
}