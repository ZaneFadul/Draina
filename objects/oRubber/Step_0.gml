yVel += grv;
//------------------------Check Collisions

checkCollisions(self, [oCollidableManager]);

if(place_meeting(x-1, y, oCharacter) || place_meeting(x+1, y, oCharacter)){
	if(oCharacter.moveRight){
	xVel += oCharacter.walkSpeed;
	}
	if(oCharacter.moveLeft){
	xVel -= oCharacter.walkSpeed;
	}
} else {
	xVel = 0;
}



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

//horizontal
with(instance_place(x+xVel, y, oCurrent)){
	instance_destroy();
}

//vertical (from the top)
with(instance_place(x, y+yVel, oCurrent)){
	instance_destroy();
}

//-----------------------------------------------UPDATE POSITION
if(myHealth < 1){
	dead = true;
	sprite_index = sCrateBreak;
	image_speed = 2;
}

if(dead){
	if(image_index == 0) audio_play_sound(uSmash,10,0);
	if(image_index > image_number - 1){
		instance_destroy();
	}
}

x += xVel;
y += yVel;

damageCooldown --;

//show_message(keyJumpReady);