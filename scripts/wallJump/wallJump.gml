/// wallJump(player)
///@description wallJump(player)
///@param player

with(argument0){
//WALL JUMP
var wallR = instance_place(x+xVel+1, y, oCollidableManager);
var wallL = instance_place(x+xVel-1, y, oCollidableManager);

if(instance_exists(wallR)){
if(wallR.scalable && !grounded && !engageDash && faceRight){
	if(yVel >= 0  && move==1) {grv = 0.1; dashCharge += 1;}
	else if(dashCharge > 0) dashCharge -= 1;
	if(keyJump && keyJumpReady){
		audio_play_sound(uJump,10,0);
		yVel = -jumpHeight/1.5;
		xVel = -6;
		dashCharge = 0;
		faceLeft = 1;
		faceRight = 0;
		keyJumpReady = false;
		instance_create_layer(x+8,y+32,"Instances",oDustParticle);
	}  
} else {
	if(dashCharge > 0) dashCharge -= 1;
	grv = 0.25;
}
} else if(instance_exists(wallL)){
if(wallL.scalable && !grounded && !engageDash && faceLeft){
	if(yVel >= 0 && move==-1) {grv = 0.1; dashCharge += 1;}
	else if(dashCharge > 0) dashCharge -= 1;
	if(keyJump && keyJumpReady){
		audio_play_sound(uJump,10,0);
		yVel = -jumpHeight/1.5;
		xVel = 6;
		dashCharge = 0;
		faceLeft = 0;
		faceRight = 1;
		keyJumpReady = false;
		instance_create_layer(x-8,y+32,"Instances",oDustParticle);
	} 
}  else {
	if(dashCharge > 0) dashCharge -= 1;
	grv = 0.25;
}
} else {
	if(dashCharge > 0) dashCharge -= 1;
	grv = 0.25;
}

if(dashCharge >= dashChargeThreshold){
	dashCharge -= 1;
	instance_create_layer(x,y,"Instances",oElectricParticle);
	keyDashReady = true;
}
}
