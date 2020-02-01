///@description loop(audioObj)
if(!audio_is_playing(argument0)){
	global.currentSong = audio_play_sound(argument0, 10, 0);
}

if (audio_sound_get_track_position(global.currentSong) >= audio_sound_length(argument0) - 0.04) {
	global.currentSong = audio_play_sound(argument0, 10, 0);
	}
/*if(audio_sound_get_track_position(global.currentSong) >= audio_sound_length(argument0) - 0.02){
	audio_sound_set_track_position(global.currentSong,0);
} else {
	pr(audio_sound_get_track_position(global.currentSong));
}