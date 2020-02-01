/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

switch(room_get_name(room)){
case "titlescreen":
if(!audio_is_playing(uTitle)) audio_stop_all(); global.titleAudio = audio_play_sound(uTitle,10,false);
break;
}
