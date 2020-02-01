/// @description Give attributes to Character
// You can write your code in this editor
depth = -3;
//GAME MECHANIC VARIABLES
name = "";
maxHealth = 3;
myHealth = maxHealth;
jumpHeight = 10;
walkSpeed = 4;
grounded = false;
dead = false;
damage = 1;
damageCooldown = 8;
flash = 0;
maxDamageCooldown = 60;

keyLeft = 0;
keyRight = 0;
keyUp = 0;
keyDown = 0;
keyDash = 0;
keyJump = 0;
keyShoot = 0;

//Keeps user from holding the button
keyJumpReady = true;
keyShootReady = true;
engageShoot = false;
shootCooldown = 0;

keyDashReady = true;
engageDash = false;
dashCooldown = 0;
dashCooldown2 = 0;
dashFacing = 0;
inAirDash = false;

keyTimeStop = false;
keyTimeStopReady = true;
keyTimeCount = 0;
keyTimeThreshold = 5; //seconds
timeStopped = false;

grv = 0.25;
fallMultiplier = 2.5;

xVel = 0;
yVel = 0;
move = 0;

respawnPoint = [x,y];

//SPRITE VARIABLES
faceLeft = 0;
faceRight = 1;
lookUp = 0;
lookDown = 0;
moveLeft = 0;
moveRight = 0;
jump = 0;
shoot = 0;/// @description Insert description here
// You can write your code in this editor

state = "DOCILE";
ai_pattern = 1;