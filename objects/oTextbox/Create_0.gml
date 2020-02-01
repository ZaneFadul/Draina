/// @description Insert description here
// You can write your code in this editor
depth = -19;
image_speed = 1;
text[0] = "";
character = oPlayer;
done = false;
page = 0;
charCount = 0;
textPart = 0;
fastText = 0;
boxWidth = sprite_get_width(sTextbox);
stringHeight = string_height(text[page]);

spr = sTextbox;
portrait = -1;
audio = -1;

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