cutsceneInfo = [
[cutsceneStopSound,uForest],
[cutsceneTalk,oCreme,["..."]],
[cutsceneTalk,oPlayer,["..."]],
[cutsceneTalk,oCreme,["..."]],
[cutsceneTalk,oPlayer,["...","Dr. Creme Brulee!"]],
[cutsceneMoveCharacter,oPlayer, 80, 1],
[cutscenePlaySound,uLightsOff],
[cutsceneBlack],
[cutsceneInstanceDestroy,oCreme],
[cutsceneChangeVariable,inst_7FE93028,"x",832],
[cutsceneChangeVariable,inst_7FE93028,"y",448],
[cutsceneChangeVariable,inst_3B3C0255,"x",832],
[cutsceneChangeVariable,inst_3B3C0255,"y",512],
[cutsceneInstanceCreate,30,640,"Instances",oCutsceneTriggerP],
[cutsceneChangeVariable,oCutsceneTriggerP,"autoAdd",0],
[cutsceneChangeVariable,oCutsceneTriggerP,"cutsceneInfo",[
[cutsceneChangeVariable,inst_7FE93028,"x",832],
[cutsceneChangeVariable,inst_7FE93028,"y",448],
[cutsceneChangeVariable,inst_3B3C0255,"x",832],
[cutsceneChangeVariable,inst_3B3C0255,"y",512],
[cutsceneChangeVariable,oCreme,"x",-2000],
[cutsceneChangeVariable,oCreme,"y",-2000],
[cutsceneMoveCharacter,oPlayer, 120, 0]]],
[cutsceneWait,2],
[cutsceneFadeIn],
[cutsceneWait,1],
[cutscenePlayMusic,uFactory1]
];