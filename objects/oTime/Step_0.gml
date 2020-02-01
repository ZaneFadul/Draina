/// @description Insert description here
// You can write your code in this editor
if(global.pause){
		instance_deactivate_all(true);
		for(var i = 0; i < array_length_1d(global.managers); i++){
			instance_activate_object(global.managers[i]);
		}
		audio_pause_all();
		audio_resume_sound(uMenu1);
		audio_resume_sound(uMenu2);
		audio_resume_sound(uTimeStop);
} else {
	instance_activate_all();
	audio_resume_all();
}