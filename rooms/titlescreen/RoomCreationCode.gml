instance_create_layer(-1,-1,"Instances",oCutscene);
oCutscene.cutscene = true;
oCutscene.autoAdd = false;
oCutscene.sceneInfo = [
[cutsceneBlack],
[cutsceneWide],
[cutsceneWait, 2.5],
[cutsceneChangeVariable,oTitleFigure,"x",view_w + view_x],
[cutsceneChangeVariable,oTitleFigure,"y",room_height/2],
[cutsceneFadeIn],
[cutsceneMoveCharacterY,oTitleFigure,580,0],
[cutsceneChangeVariable,oTitleFigure,"yVel",0],
[cutsceneChangeVariable,oStart,"x",view_w + view_x],
[cutsceneChangeVariable,oStart,"y",4*room_height/5],
[cutsceneUnwide]
];

if(instance_exists(oPlayer)){
	instance_destroy(oPlayer);
}

if(instance_exists(oWeapon)){
	instance_destroy(oWeapon);
}