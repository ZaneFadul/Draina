///dash(player)
///@description dash(player)
///@param player

with(argument0){
	if(keyDashReady && keyDash){
	engageDash = true;
	keyDashReady = false;
	audio_play_sound(uDash,10,0);
	if(grounded){
		inAirDash = false;
	} else {
		inAirDash = true;
	}
	dashCooldown = current_time;
	if(faceRight){
		dashFacing = 1;
	}
	if (faceLeft){
		dashFacing = -1;
	}
}

if(engageDash){
	dashCharge = 0;
	keyDashReady = false;
	if (move != 0){
		if(abs(xVel) < walkSpeed * 3){
			xVel = walkSpeed * 3 * move;
		}
	} else {
		xVel = walkSpeed * 3 * (faceRight - faceLeft);
	}
	
	instance_create_depth(x,y,0,oElectricParticle);
	if(current_time > dashCooldown + 150 || (grounded && keyJump)){
		engageDash = false;
		dashCooldown2 = current_time; //sets countdown for readying button
	}
	if(engageDash) yVel = 0;
}
}