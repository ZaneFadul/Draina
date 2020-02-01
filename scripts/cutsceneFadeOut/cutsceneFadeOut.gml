fade = 1;
draw = 1;
if(alpha <= 1){
	alpha += 0.05;
}
if(alpha > 1){
	alpha = 0;
	fade = 0;
	cutsceneEndAction();
}