/// generateAI(obj,patternNum)
/// @description generateAI(obj,patternNum)
/// @param obj
/// @param patternNum

with(argument0){	
	
	if(!keyJumpReady){
		keyJump = 0;
	}
	
	switch(argument1){
		//SLIME CREATURE
		case "docile1":
		keyRight = 1;
		break;
		
		case "attack1":
		if(x > oPlayer.x) {
			keyRight = 0;
			keyLeft = 1;
		} else {
			keyRight = 1;
			keyLeft = 0;
		}
		if(y > oPlayer.y && grounded){
			keyJump = 1;
		}
		break;
		
		//OTHER
		
		default:
		break;
	}
	
	if(!place_meeting(x-70,y+70,oCollidable) || place_meeting(x-70,y,oDangerousCollidable)){
		if(!grounded){
			if(irandom_range(0,4) > 2){
				keyJump = 0; 
				keyRight = 1;
			} else keyJump = 1;
		}
			if(keyJump) keyLeft = 1; else keyLeft = 0;
	}
	if(!place_meeting(x+70,y+70,oCollidable) || place_meeting(x+70,y,oDangerousCollidable)){
		if(!grounded){
			if (irandom_range(0,4) > 2){
				keyJump = 0;
				keyLeft = 1;
			}else keyJump = 1;
		}
			if(keyJump) keyRight = 1; else keyRight = 0;
	}
	
}