/// @description cutsceneTalk
/// @param obj
/// @param text

if(!instance_exists(oTextbox)){
myTextbox = instance_create_depth(x,y,-19,oTextbox);
myTextbox.character = argument0;
myTextbox.text = argument1;
}

if(myTextbox.done){
	cutsceneEndAction();
}