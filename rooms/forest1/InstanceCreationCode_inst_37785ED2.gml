var prodx = oProdRod.x;
var prody = oProdRod.y;
cutsceneInfo = [
[cutsceneMoveCharacter,oPlayer,400,0],
[cutsceneChangeVariable,oPlayer,"keyDash",1],
[cutsceneTalk,oPlayer,["The Denki Blade!"]],
[cutsceneMoveCharacter,oPlayer,prodx,0],
[cutsceneTalk,oPlayer,["Oh how I've missed you, my beloved electric sword.","...","Oh no."]],
[cutsceneMoveCamera,prodx,prody,0],
[cutsceneMoveCamera,2000,1370,1],
[cutsceneWait,1],
[cutsceneTalk,oPlayer,["Seems like Creme Brulee really is doing something to these trees...","but at what cost..."]],
[cutsceneMoveCamera,prodx,prody,1],
[cutsceneReturnCamera]
];