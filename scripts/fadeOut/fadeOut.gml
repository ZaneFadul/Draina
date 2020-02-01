global.secondarySong = argument0;
if(audio_sound_get_gain(global.secondarySong) > 0) {
	audio_sound_gain(global.secondarySong ,audio_sound_get_gain(global.secondarySong) - 0.02 ,0);
} else {
	audio_stop_sound(argument0);
}