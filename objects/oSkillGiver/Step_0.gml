/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oPlayer)){
	var skill = mySkill;
	with(oPlayer){
		switch(skill){
			case "dash":
			unlocked_dash = true;
			break;
			
			case "wallJump":
			unlocked_wallJump = true;
			break;
			
			default:
			break;
		}
	}
	instance_destroy();
}
