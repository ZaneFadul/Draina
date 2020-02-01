/// @description Insert description here
// You can write your code in this editor
if(!global.pause) exit;
draw_set_font(font0);
var gwidth = view_w+1;
var gheight = view_h+1;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 64, x_buffer = 16;
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;

//draw back
var c = c_black;
//draw_rectangle_color(0,0,gwidth,gheight,c,c,c,c,false);
shader_set(shdTimeStop);
draw_sprite(pauseBack,0,0,0);
shader_reset();
//draw elements
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer, lty, xo;

var yy = 0; 

repeat(ds_height){
	lty = start_y + (yy*y_buffer);
	c = c_white;
	xo = 0;
	if(yy == menu_option[page]){
		c = c_orange;
		xo = -(x_buffer);
	}
	draw_text_color(ltx+xo,lty,ds_grid[# 0,yy],c,c,c,c,1);
	yy++;
}

draw_line(start_x, start_y-y_buffer, start_x, lty+y_buffer);

draw_set_valign(fa_top);
draw_set_halign(fa_left);