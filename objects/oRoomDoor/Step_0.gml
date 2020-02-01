/// @description Insert description here
// You can write your code in this editor
if(targetX != -1 || targetY != -1){
	if(place_meeting(x,y,oPlayer)){
	if(myID != pointer_null){
		room_goto(myID);
	} else {
		room_goto_next();
	}
	switch(targetX){
		default:
		oPlayer.x = targetX;
		if(targetY != -1){
			oPlayer.y = targetY;
			oPlayer.respawnPoint = [targetX, targetY];
		} else { 
			oPlayer.respawnPoint = [targetX,oPlayer.y];
		}
		break;
		
		case -1:
		oPlayer.respawnPoint = [oPlayer.x,targetY];
		oPlayer.y = targetY;
		break;
	}

}
	exit;
}

if(place_meeting(x+1,y,oPlayer) || place_meeting(x-1,y,oPlayer) ){
	if(myID != pointer_null){
		room_goto(myID);
	} else {
		room_goto_next();
	}
	oPlayer.respawnPoint = [-10,oPlayer.y];
	oPlayer.x = -10;
} else if (place_meeting(x,y-1,oPlayer) || place_meeting(x,y-1,oPlayer)){
		if(myID != pointer_null){
		room_goto(myID);
	} else {
		room_goto_next();
	}
	oPlayer.respawnPoint = [oPlayer.x,-15];
	oPlayer.y = -15;
}