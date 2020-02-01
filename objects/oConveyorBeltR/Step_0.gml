/// @description Insert description here
// You can write your code in this editor
var inst = instance_place(x,y-1,oCharacter);
var mySpd = spd;
if(inst){
	with(inst){
		if(move == 0){
			xVel = mySpd/6;}
		if(move > 0){
			if(xVel < mySpd){
				xVel += mySpd/64;
			}
		}
		if(move < 0){
			xVel /= mySpd/6;
		}
	}
}