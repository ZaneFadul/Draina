cutsceneInfo = [
[cutsceneTalk, oPlayer, ["Creme Brulee!"]],
[cutsceneMoveCamera, 1120, 0, 0],
[cutsceneMoveCharacter,oPlayer, 860, 0],
[cutsceneTalk, oCreme, ["..."]],
[cutsceneStopSound, uFactory1],
[cutsceneWait,2],
[cutsceneTalk, oPlayer, ["...please.", "The ecosystem is hurting from what you're doing...","The trees, the birds, all that life...","...and just so you can get rubber?"]],
[cutsceneTalk, oCreme, ["..."]],
[cutsceneTalk, oPlayer, ["ANSWER ME!!!"]],
[cutsceneWait,2],
[cutscenePlayMusic,uCremeBrulee],
[cutsceneTalk, oCreme, ["You stupid kid."]],
[cutsceneTalk, oPlayer, ["Huh?"]],
[cutsceneTalk, oCreme, ["You're acting like I don't care about the ecosystem, but you're wrong!","How could I hate it if it brings in so much cash?","HAHAHAHA!"]],
[cutsceneWait, 1],
[cutsceneTalk, oPlayer, ["You're a terrible human being..."]],
[cutsceneWait, 1],
[cutsceneTalk, oCreme, ["And you're a weird purple person. Doesn't feel so good, does it?", "HAHAHAHA!"]],
[cutsceneWait, 1],
[cutsceneTalk, oCreme, ["Alright, time to die."]],
[cutsceneStopSound,uCremeBrulee],
[cutsceneWait, 0.5],
[cutscenePlaySound,uLightsOff],
[cutsceneChangeVariable, inst_16E12530, "electrified", 1],
[cutsceneWait, 1],
[cutsceneChangeVariable,inst_16EB074,"y",900],
[cutsceneTalk, oPlayer, ["AH!!!"]],
[cutsceneFadeOut],
[cutsceneReturnCamera],
[cutsceneInstanceDestroy,inst_16EB074],
[cutsceneWait,2],
];