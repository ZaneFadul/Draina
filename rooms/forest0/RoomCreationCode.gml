instance_create_layer(-1,-1,"Instances",oCutscene);
oCutscene.cutscene = true;
oCutscene.autoAdd = false;
oCutscene.sceneInfo = [
[cutsceneBlack],
[cutsceneWide],
[cutsceneMoveCamera, 0, 0, 0],
[cutsceneWait, 1],
[cutsceneFadeIn],
[cutsceneWait, 0.5],
[cutsceneFadeIn],
[cutsceneMoveCamera, 250, 300, 0],
[cutsceneWait, 1],
[cutsceneMoveCamera, 250, 1150, 1],
[cutsceneChangeVariable, oPlayer, "keyDash", 1],
[cutsceneTalk, oPlayer, ["Gosh... it feels like Dianlin Forest is endless...","I'm almost at Dr. Creme Brulee's factory.","I can feel it.","I just wish I didn't drop my Denki Blade...","It must be around here somewhere."]],
[cutsceneMoveCharacter, oPlayer, 300, 1],
[cutsceneReturnCamera]
];