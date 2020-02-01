/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x,y,oCurrent)){
	if(!place_meeting(x,y,oWall)){
		instance_create_layer(x,y,"Instances",oWall);
		if(place_meeting(x,y,oPlayer)) oPlayer.dead = true;
	}
} else {
	if(place_meeting(x,y,oWall)){
		instance_destroy(instance_place(x,y,oWall));
	}
}
		