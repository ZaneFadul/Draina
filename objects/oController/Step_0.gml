/// @description Insert description here
// You can write your code in this editor
global.gamepadAvailable = gamepad_is_connected(0);
if(global.gamepadAvailable){
	if(gamepad_axis_value(0,gp_axislh) <= 0){
		global.keyLeft = abs(gamepad_axis_value(0,gp_axislh));
	} else {
		global.keyLeft = 0;
	}
	if(gamepad_axis_value(0,gp_axislh) >= 0){
		global.keyRight = gamepad_axis_value(0,gp_axislh);
	} else {
		global.keyRight = 0;
	}
	if(gamepad_axis_value(0,gp_axislv) <= 0){
		global.keyUp = gamepad_axis_value(0,gp_axislv);
	} else {
		global.keyUp = 0;
	}
	if(gamepad_axis_value(0,gp_axislv) >= 0){
		global.keyDown = abs(gamepad_axis_value(0,gp_axislv));
	} else {
		global.keyDown = 0;
	}

	global.keyJump = gamepad_button_check(0,gp_face1);
	global.keyShoot = gamepad_button_check_pressed(0,gp_face2);
	global.keyDash = gamepad_button_check_pressed(0,gp_face3);
	if(!global.pause){
	global.keyTimeStop = gamepad_button_check(0,gp_start);
	}
	global.keyEnter = gamepad_button_check_pressed(0,gp_start);
} else {
	global.keyLeft = keyboard_check(ord("A"));
	global.keyRight = keyboard_check(ord("D"));
	global.keyUp = keyboard_check(ord("W"));
	global.keyDown = keyboard_check(ord("S"));

	if(keyboard_check_released(ord("W"))){
		global.keyUp = 0;
	}

	if(keyboard_check_released(ord("D"))){
		global.keyDown = 0;
	}

	global.keyJump = keyboard_check(vk_space);
	global.keyShoot = keyboard_check_pressed(ord("L"));
	global.keyDash = keyboard_check_pressed(ord("J"));
	if(!global.pause){
	global.keyTimeStop = keyboard_check(ord("K"));
	}
	global.keyEnter = keyboard_check_pressed(vk_enter);
}