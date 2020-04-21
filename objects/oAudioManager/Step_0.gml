/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "setup"){
	if(audio_group_is_loaded(bgm)){
		room_goto_next();
	} else {
		exit;
	}
}


if(global.state == "ATTACK"){
	audio_group_set_gain(bgm,0,100);
	audio_sound_gain(uBattle2,1,0);
	if(!audio_is_playing(uBattle2)){
		var btl = audio_play_sound(uBattle2,10,1);
		audio_sound_set_track_position(btl,0.5);
	} 
} else {
		audio_group_set_gain(bgm,1,200);
		fadeOut(uBattle2);
}
	
//loopers
var roomName = string_digit_clean(room_get_name(room));
switch(roomName){
case "debugRoom": 
loop(uJazzloop); 
break;
	
case "forest":
loop(uForest);
break;

case "basement":
loop(uFactory2);
}