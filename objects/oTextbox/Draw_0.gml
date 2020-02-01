/// @description Insert description here
// You can write your code in this editor
switch(character){
	case oPlayer:
	portrait = sPlayerPortrait;
	audio = uPlayerSpeak;
	break;
	
	case oCreme:
	portrait = sCremePortrait;
	audio = uCremeSpeak;
	break;
}

if(instance_exists(oPlayer) && oPlayer.y > view_h/2) {
	draw_sprite(spr,0,view_w/2 + view_x,200 + view_y);
	draw_sprite(portrait,0,view_w/2 - boxWidth/2 + 130 + view_x, 200 + view_y);
}
else {
	draw_sprite(spr,0,view_w/2 + view_x,view_h - 200);
	draw_sprite(portrait,0,view_w/2 - boxWidth/2 + 130 + view_x, view_h - 200);
}


draw_set_font(font1);

if(charCount < string_length(text[page])){
	spr = sTextbox;
	if(!fastText){
		charCount += 0.5;
	} else {
		charCount ++;
	}
	if((charCount-1)%2 == 0) audio_play_sound(audio,10,0);
} else {
	spr = sTextboxDone;
}

textPart = string_copy(text[page],1,charCount);
if(instance_exists(oPlayer) && oPlayer.y > view_h/2) draw_text_ext(view_w/2 - boxWidth/2 + 300 + view_x, 130 + view_y, textPart, 40,2*boxWidth/3 - 20);
else draw_text_ext(view_w/2 - boxWidth/2 + 300 + view_x, 100 + view_y + view_h/2, textPart, 40,2*boxWidth/3 - 20);