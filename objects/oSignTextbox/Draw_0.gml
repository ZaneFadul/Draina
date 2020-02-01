/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oCutscene) || global.pause) exit;

draw_set_font(font1);

if(instance_exists(oPlayer) && oPlayer.y > view_h/2){
	draw_sprite(sSignTextbox,0,view_w/2 + view_x,200 + view_y);
	draw_text_ext(2*boxWidth/3 - 320 + view_x, 130 + view_y, text, stringHeight, boxWidth - 125);
}
else {
	draw_sprite(sSignTextbox,0,view_w/2 + view_x,view_h - 200);
	draw_text_ext(2*boxWidth/3 - 320 + view_x, 100 + view_y + view_h/2, text, stringHeight, boxWidth - 125);
}