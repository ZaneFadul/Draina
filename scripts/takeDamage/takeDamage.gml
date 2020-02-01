/// damage(takerObj, giverObj)
/// @description damaage(takerObj, giverObj
/// @param takerObj
/// @param giverObj

// Damages an obj takerObj by the damage outputted by an obj giverObj


if(argument0.damageCooldown < 1){
	argument0.damageCooldown = argument0.maxDamageCooldown;
	thisHealth = instance_create_depth(0,0,-16,oHealthParticle);
	with(thisHealth) tracking = argument0;
	argument0.myHealth -= argument1.damage;
	switch(argument0.myHealth){
		case 2:
		with(thisHealth) sprite_index = sHealth2;
		break;
		case 1:
		with(thisHealth) sprite_index = sHealth1;
		break;
	}
	audio_play_sound(uHit,10,0);
	with(argument0){
		flash = 5;
		yVel = -10;
	}	
}