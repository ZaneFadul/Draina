/// @description Insert description here
// You can write your code in this editor
global.keyUp = keyboard_check_pressed(ord("W"));
global.keyDown = keyboard_check_pressed(ord("S"));
global.keyEnter = keyboard_check_pressed(vk_enter);
global.keyTimeStop = keyboard_check_pressed(ord("K"));

if(gamepad_is_connected(0)){	
	if(gamepad_axis_value(0,gp_axislv) >= 0.7 && global.keyUp == 0){
		global.keyUp = 1;
	}
	if(gamepad_axis_value(0,gp_axislv) <= -0.7 && global.keyDown == 0){
		global.keyDown = 1;
	}
	
	if(gamepad_axis_value(0,gp_axislv) == 0){
		global.keyUp = 0;
		global.keyDown = 0;
	}
	
	global.keyEnter = gamepad_button_check_pressed(0,gp_face1);
	global.keyTimeStop = gamepad_button_check_pressed(0,gp_start);
}
if(!global.pause) {
	if(justPaused) justPaused = 0;
	exit;
}

if(justPaused){
	var i = 0; array_len = array_length_1d(menu_pages);
	repeat(array_len){
		menu_option[i] = 0;
		i++;
	}
}

input_up_p		= global.keyUp;
input_down_p	= global.keyDown;
input_enter_p	= global.keyEnter;
input_enter2_p	= global.keyTimeStop;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ochange = input_down_p - input_up_p;
if(global.gamepadAvailable){
	var ochange = input_up_p - input_down_p;
}
if(ochange != 0){
	menu_option[page] += ochange;
	if(menu_option[page] > ds_height-1){
		menu_option[page] = ds_height - 1;
	} else if(menu_option[page] < 0){
		menu_option[page] = 0;
	} else {
		audio_play_sound(uMenu1,10,false);
	}
}

if(input_enter_p || input_enter2_p){
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.page_transfer: 
		page = ds_grid[# 2, menu_option[page]];
		audio_play_sound(uMenu2,10,false);
		break;
		
		case menu_element_type.script_runner: 
		script_execute(ds_grid[# 2, menu_option[page]]);
		audio_play_sound(uMenu2,10,false);
		break;
	}
}