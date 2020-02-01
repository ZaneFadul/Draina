/// @description Insert description here
// You can write your code in this editor
x = 99999;
y = 99999;

image_speed = 0;

if(oPlayer.engageShoot){
	audio_play_sound(uShoot,10,0);
	if(oPlayer.faceRight){
		image_xscale = 1;
		image_yscale = 1;
	} 
	if(oPlayer.faceLeft){
		image_xscale = -1;
		image_yscale = 1;
	}
	if(oPlayer.moveRight || oPlayer.moveLeft){
		sprite_index = sHorizontalShoot;
	}
	if(oPlayer.lookUp){
		sprite_index = sVerticalShoot;
		image_yscale = 1;
	} 
	if(!oPlayer.grounded && oPlayer.lookDown){
		sprite_index = sVerticalShoot;
		image_yscale = -1;
	}
	oPlayer.engageShoot = false;
	engageAnimation = true;
	
}

if(engageAnimation){
	image_speed = 1.2;
	x = oPlayer.x;
	y = oPlayer.y;
	if(image_index > image_number - 1){
		engageAnimation = false;
		image_index = 0;
		animationDone = true;
	}
}

if(animationDone && !oPlayer.keyShoot){
	oPlayer.keyShootReady = true;
	animationDone = false;
}

if(oPlayer.engageDash){
	switch(oPlayer.move){
		case 1:
		if (oPlayer.faceRight) damage = 2; 
		break;
	
		case -1:
		if (oPlayer.faceLeft) damage = 2; 
		break;
	}
} else {
	damage = 1;
}