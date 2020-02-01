/// @description Insert description here
// You can write your code in this editor
if(autoAdd){
if(header == false && sceneInfo[array_length_1d(sceneInfo)-1] != [cutsceneUnwide]){
	sceneInfo[array_length_1d(sceneInfo)] = [cutsceneUnwide];
	pr(array_length_1d(sceneInfo));
	header = true;
}

if(footer == false && sceneInfo[0] != [cutsceneWide] && sceneInfo[0] != [cutsceneBlack] && sceneInfo[0] != [cutsceneFadeOut]){
	for(var i = array_length_1d(sceneInfo); i >= 0; i --){
		if(i == 0){
			sceneInfo[i] = [cutsceneWide];
		} else {
			sceneInfo[i] = sceneInfo[i-1];
		}
	}
	footer = true;
}
}

var currentScene = sceneInfo[scene];

switch(array_length_1d(currentScene) - 1){
	case 0: script_execute(currentScene[0]); break;
	case 1: script_execute(currentScene[0], currentScene[1]); break;
	case 2: script_execute(currentScene[0], currentScene[1], currentScene[2]); break;
	case 3: script_execute(currentScene[0], currentScene[1], currentScene[2], currentScene[3]); break;
	case 4: script_execute(currentScene[0], currentScene[1], currentScene[2], currentScene[3], currentScene[4]); break;
}

