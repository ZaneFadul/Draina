/// cutsceneWait(seconds)
/// @description cutsceneWait(seconds)
/// @param seconds

timer++;
if(timer >= argument0 * room_speed){
	timer = 0;
	cutsceneEndAction();
}
