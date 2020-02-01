/// @description Insert description here
// You can write your code in this editor
if(!oTitleScreen.introAnimationDone){
	image_alpha = 0;
} else {
	if(image_alpha < 1){
		image_alpha += 0.1;
	}
}

x = view_x + view_w/2;
if(instance_exists(oCutscene)){
if(oCutscene.cutscene) exit;
}

if(oTitleScreen.introAnimationDone && (global.keyEnter || global.keyJump)){
	audio_play_sound(uTimeStop,10,0);
	audio_stop_sound(uTitle);
	instance_create_layer(-1,-1, "Instances", oCutscene);
	oCutscene.cutscene = true;
	oCutscene.autoAdd = false;
	oCutscene.sceneInfo = [
		[cutsceneFadeOut],
		[cutsceneChangeVariable, oCutscene, "alpha", 1],
		[cutsceneWait, 1],
		[cutsceneRoomNext]
	];
}

if(keyboard_check_pressed(ord("D"))){
	if(keyboard_check_pressed(ord("B"))){
		room_goto(room_last);
	}
}