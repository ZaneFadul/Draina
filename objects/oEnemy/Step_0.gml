/// @description Insert description here
// You can write your code in this editor

//-----------------------------------------------AI INPUT
//move left and right
switch(state){
	case "DOCILE":
	generateAI(self,"docile"+string(ai_pattern));
	for(var i = 0; i < instance_number(oEnemy); i++){
		if(instance_find(oEnemy, i).state != "ATTACK" && distance_to_object(oPlayer) < 300){
			state = "ATTACK";
		} 
	}
	if(place_meeting(x,y,oWeapon)){
		state = "ATTACK";
	}
	break;
	
	case "ATTACK":
	global.state = "ATTACK";
	generateAI(self,"attack"+string(ai_pattern));
	if (distance_to_object(oPlayer) > 500){
		state = "DOCILE";
		global.state = "NORMAL";
	}
	break;
}

move = keyRight - keyLeft;
xVel += move*(walkSpeed/16);

switch(move){
	case 1:
		faceRight = 1;
		faceLeft = 0;
		break;
	case -1:
		faceLeft = 1;
		faceRight = 0;
		break;
}

//HUMAN INPUT dash
if(keyDashReady && keyDash){
	engageDash = true;
	keyDashReady = false;

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

//Dash cooldown
if(current_time > dashCooldown2 + 200){
	if(!inAirDash){
	keyDashReady = true;
	}
}

if(grounded){
	inAirDash = false;
}

//fast fall
if(!grounded && keyDown){
	yVel += grv/2;
}

//cap acceleration
if (xVel > walkSpeed || xVel < -walkSpeed){
	xVel = move*walkSpeed;
}


//Initial acceleration and turning
if(grounded){
	if (move == 0 && xVel > 0){
		xVel -= xVel/8;
	} else if (move == 0 && xVel < 0){
		xVel -= xVel/8;
	}
	if(move == -1 && xVel > 0){
		xVel -= walkSpeed/4;
	}
	if(move == 1 && xVel < 0){
		xVel += walkSpeed/4;
	}
}

//JUMP
if(grounded && keyJump){
	//checks if the button is originally released
	if(keyJumpReady){
	yVel -= jumpHeight;
	keyJumpReady = false;
	}
}

//jump forgiveness TBA

//use weapon
if(keyShootReady && keyShoot){
	engageShoot = true;
	keyShootReady = false;
}



//VARIABLE KEEP FROM SPAM
if(keyboard_check_released(ord("Z"))){
	keyJumpReady = true;
}

if(keyboard_check_released(ord("X"))){
	keyShootReady = true;
}



//-----------------------------------------------ENVIRONMENT INPUT
//------------------------Check Physics
//gap fall speed
if(yVel < 20){
yVel += grv;
}

//jump physics
if(yVel < 0 && !keyJump){
	yVel += grv * (fallMultiplier - 1);
}

//dashing physics
if(engageDash){
	keyDashReady = false;
	xVel = walkSpeed * 3 * move;
	if(grounded){
		yVel -= 1;
	} else {
		yVel = 0;
	}
	if(current_time > dashCooldown + 150){
		engageDash = false;
		dashCooldown2 = current_time; //sets countdown for readying button
	}
}

//------------------------Check Collisions

checkCollisions(self,[oCollidableManager]);

//Dangerous Collisions
//horizontal
if(place_meeting(x+xVel, y, oDangerousCollidable)){
	if(oDangerousCollidable.instantKill = true){
		instance_destroy();
	} else {
		takeDamage(self,oDangerousCollidable);
		yVel = 0; xVel = 0;
	}
}

//vertical (from the top)
if(place_meeting(x, y+yVel, oDangerousCollidable)){
	if(oDangerousCollidable.instantKill = true){
		instance_destroy();
	} else {
		takeDamage(self,oDangerousCollidable);
				yVel = 0; xVel = 0;
	}
}

//horizontal
if(place_meeting(x+xVel, y, oWeapon)){
		takeDamage(self,oWeapon);
				yVel = 0; xVel = 0;
}

//vertical (from the top)
if(place_meeting(x, y+yVel, oWeapon)){
		takeDamage(self,oWeapon);
				yVel = 0; xVel = 0;
}
//-----------------------------------------------UPDATE POSITION
if(myHealth < 1){
	dead = true;
	global.state = "NORMAL";
	instance_destroy();
}

x += xVel;
y += yVel;

if(damageCooldown > 0) damageCooldown --;

//show_message(keyJumpReady);