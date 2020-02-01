/// @description Insert description here
// You can write your code in this editor


if(done){
	instance_destroy();
}

if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_start) || gamepad_button_check_pressed(0,gp_face1)){	
	if(page + 1 < array_length_1d(text)){
		
		if(charCount >= string_length(text[page])){
			page++;
			charCount = 0;
			fastText = 0;
		} else {
			fastText = 1;
		}
	} else {
		if(charCount >= string_length(text[page])){
			done = true;
			charCount = 0;
			fastText = 0;
		} else {
			fastText = 1;
		}
	}
}