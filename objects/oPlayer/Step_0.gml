/// @description Insert description here
// You can write your code in this editor
//-----------------------------------------------KEYBOARD INPUT

if(!instance_exists(oCutscene)){
	keyLeft = global.keyLeft;
	keyRight = global.keyRight;
	keyUp = global.keyUp;
	keyDown = global.keyDown;
	
	keyJump = global.keyJump;
	keyShoot = global.keyShoot;
	keyDash = global.keyDash;
	keyTimeStop = global.keyTimeStop;
} else {
	if(oCutscene.cutscene){
		keyLeft = 0;
		keyRight = 0;
		keyUp = 0;
		keyDown = 0;
		keyTimeStop = 0;
		keyJump = 0;
	}
}

if(keyLeft > 0){
	moveLeft = 1;
	moveRight = 0;
	lookUp = 0;
	lookDown = 0;
}
if(keyRight > 0){
	moveLeft = 0;
	moveRight = 1;
	lookUp = 0;
	lookDown = 0;
}
if(keyUp > 0){
	moveLeft = 0;
	moveRight = 0;
	lookUp = 1;
	lookDown = 0;
}
if(keyDown > 0){
	moveLeft = 0;
	moveRight = 0;
	lookUp = 0;
	lookDown = 1;
}

if(global.keyTimeStop == 0){
	keyTimeStopReady = true;
}

//TIME STOP
if(keyTimeStopReady && keyTimeStop){
	keyTimeCount ++;
	walkSpeed = 2;
} else {
	keyTimeCount = 0;
	walkSpeed = 4;
}
if(keyTimeCount >= keyTimeThreshold){
	audio_play_sound(uTimeStop,30,false);
	keyTimeCount = 0;
	timeStopped = true;
	with(oGUI){
		pauseBack=sprite_create_from_surface(application_surface,0,0,view_w,view_h,0,1,0,0);
	}
	global.pause = true;
	}
//-----------------------------------------------PLAYER INPUT
//move left and right
move = keyRight - keyLeft;

if(abs(xVel) <= walkSpeed){
xVel += move*(walkSpeed/16);
} else if (move != xVel/abs(xVel)){
	xVel += move*(walkSpeed/16);
}

if(move > 0){
		faceRight = 1;
		faceLeft = 0;
}
if(move < 0){
		faceLeft = 1;
		faceRight = 0;
}

//HUMAN INPUT dash


//Dash cooldown
if(current_time > dashCooldown2 + 200){

	if(!inAirDash && !keyDash){
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

/*
if(collidableMover){
	if (xVel > (collidableMover.spd)*walkSpeed || xVel < (collidableMover.spd)*walkSpeed*(-1)){
		xVel = move*(collidableMover.spd)*walkSpeed;
	}
} else {
	if (xVel > walkSpeed || xVel < -walkSpeed){
		xVel = move*walkSpeed;
	}
}
}*/

//Initial acceleration and turning
if(grounded){
	if (move == 0 && xVel > 0){
		xVel -= xVel/4;
	} else if (move == 0 && xVel < 0){
		xVel -= xVel/4;
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
	audio_play_sound(uJump,10,0);
	yVel -= jumpHeight;
	keyJumpReady = false;
	}
}

//jump forgiveness TBA

//use weapon
if(instance_exists(oWeapon)){
if(keyShootReady && keyShoot && !oWeapon.engageAnimation){
	if(!(lookDown && grounded)){
	engageShoot = true;
	keyShootReady = false;
	}
}
}


//VARIABLE KEEP FROM SPAM
if(!keyJumpReady && !global.keyJump){
	keyJumpReady = true;
}

if(keyboard_check_released(ord("L")) || gamepad_button_check_released(0,gp_face1)){
	keyShootReady = true;
}



//-----------------------------------------------ENVIRONMENT INPUT
//------------------------Check Physics
//cap fall speed
if(yVel < 20){
yVel += grv;
}

//jump physics
if(yVel < 0 && !keyJump){
	yVel += grv * (fallMultiplier - 1);
}

//dashing physics
if unlocked_dash dash(self);

//------------------------Check Collisions
if unlocked_wallJump wallJump(self);

checkCollisions(self,listOfCollisions);

//Dangerous Collisions
//horizontal
if(place_meeting(x+xVel, y, oDangerousCollidable)){
	if(oDangerousCollidable.instantKill = true){
		dead = true;
	} else {
		takeDamage(self,oDangerousCollidable);
	}
}

//vertical (from the top)
if(place_meeting(x, y+yVel, oDangerousCollidable)){
	if(oDangerousCollidable.instantKill = true){
		dead = true;
	} else {
		takeDamage(self,oDangerousCollidable);		
	}
}

//Dangerous Collisions
//horizontal
var enemy = instance_place(x, y, oEnemy)
if (instance_exists(enemy) && enemy.damageCooldown < 1){
	takeDamage(self, oEnemy);
}
//-----------------------------------------------UPDATE POSITION
if(myHealth < 1){
	dead = true;
}

if(dead){
	sprite_index = sPlayerDead;
	image_speed = 1;
	if(instance_exists(oWeapon)){
	oWeapon.animationDone = true;
	}
	
	if(image_index > image_number - 1){
		var cut = instance_create_layer(-1,-1, "Instances", oCutscene);
		cut.autoAdd = false;
		cut.sceneInfo = [
		[cutsceneFadeOut],
		[cutsceneBlack],
		[cutsceneExecuteScript, playerReset],
		[cutsceneRoomRestart],
		];
		cut.cutscene = true;
	}
	exit;
}

if(damageCooldown > 0){
	damageCooldown--;
}


if(damageCooldown > 40){
	if(!grounded){
	xVel = -10*knockbackFacing;
	yVel += grv * (fallMultiplier - 1);}
}

if(flash == 5){
	knockbackFacing = image_xscale;
}

if(!engageDash && abs(xVel) >= walkSpeed*3){
	xVel /= 2;
}

x += xVel;
y += yVel;


if(instance_exists(oWeapon)){
if (!oWeapon.engageAnimation) image_xscale = faceRight - faceLeft;
} else {
	if (faceRight) image_xscale = 1; else image_xscale = -1;
}

if(instance_exists(oCutscene)){
if((xVel > 1 || xVel < -1)){
	sprite_index = sPlayerR;
	if (grounded) image_speed = 1; else image_speed = 0;
} else {
	sprite_index = sPlayerS;
	image_speed = 0;
}
} else {
	if ((keyLeft || keyRight) && xVel != 0){
		sprite_index = sPlayerR; 
	if (grounded) image_speed = 1; else image_speed = 0;
	} else {
		sprite_index = sPlayerS;
	image_speed = 0;
}
}

if(!grounded){
	if(sign(yVel) == -1){
		sprite_index = sPlayerJ;
	} else {
		sprite_index = sPlayerF;
	}
}

if(engageDash){
	sprite_index = sPlayerD;
}