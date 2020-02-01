/// @description Insert description here
// You can write your code in this editor
depth = -20;
pauseBack = -1;
global.pause = false;

justPaused = 0;

display_set_gui_size(view_w,view_h);

enum menu_page {
	main,
	settings,
	audio,
	video,
	controls,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

ds_menu_main = create_menu_page(
	["RESUME",			menu_element_type.script_runner,		resume_game],	
	["RESTART LEVEL",	menu_element_type.script_runner,		restart_room],
	//["SETTINGS",		menu_element_type.page_transfer,		menu_page.settings],
	["RETURN TO MENU",	menu_element_type.script_runner,		return_to_menu]
);

ds_menu_settings = create_menu_page(
	["AUDIO",			menu_element_type.page_transfer,		menu_page.audio],	
	["VIDEO",			menu_element_type.page_transfer,		menu_page.video],
	["CONTROLS",		menu_element_type.page_transfer,		menu_page.controls],
	["BACK",			menu_element_type.page_transfer,		menu_page.main]
);

ds_menu_audio = create_menu_page(
	["MASTER",			menu_element_type.slider,				change_volume,			1,			[0,1]],
	["MUSIC",			menu_element_type.slider,				change_volume,			1,			[0,1]],
	["SOUNDS",			menu_element_type.slider,				change_volume,			1,			[0,1]],
	["BACK",			menu_element_type.page_transfer,		menu_page.settings]
);

ds_menu_video = create_menu_page(
	["RESOLUTION",		menu_element_type.shift,				change_resolution,		0,			[1,2,3,4,5]],
	["FULLSCREEN",		menu_element_type.toggle,				change_window_mode,		1,			["fullscreen","window"]],
	["BACK",			menu_element_type.page_transfer,		menu_page.settings]
);

ds_menu_controls = create_menu_page(
	["RIGHT",			menu_element_type.input,				"keyRight",				ord("D")],
	["UP",				menu_element_type.input,				"keyUp",				ord("W")],
	["LEFT",			menu_element_type.input,				"keyLeft",				ord("A")],
	["DOWN",			menu_element_type.input,				"keyDown",				ord("S")],
	["JUMP",			menu_element_type.input,				"keyJump",				vk_space],
	["DASH",			menu_element_type.input,				"keyDash",				ord("J")],
	["ATTACK",			menu_element_type.input,				"keyShoot",				ord("L")],
	["BACK",			menu_element_type.page_transfer,		menu_page.settings]
);

page = 0;
menu_pages = [ds_menu_main, ds_menu_settings, ds_menu_audio, ds_menu_video, ds_menu_controls];

var i = 0; array_len = array_length_1d(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}