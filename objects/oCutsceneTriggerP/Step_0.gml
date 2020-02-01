/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oPlayer)){
	instance_create_layer(-1,-1,"Instances",oCutscene);
	oCutscene.cutscene = true;
		oCutscene.autoAdd = autoAdd;
	oCutscene.sceneInfo = cutsceneInfo;
}

if(room != myRoom){
	instance_destroy();
}