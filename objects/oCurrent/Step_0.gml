/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var inst = instance_place(x,y,oWire);

with(inst) switch(myID){
		case "R":
		with(other){
			xVel = 6;
			yVel = 0;
			y = other.y;
		}
		break;
		
		case "L":
		with(other){
			xVel = -6;
			yVel = 0;
			y = other.y;
		}
		break;
		
		case "D":
		with(other){
			yVel = 6;
			xVel = 0;
			x = other.x;
		}
		break;
		
		case "U":
		with(other){
			yVel = -6;
			xVel = 0;
			x = other.x;
		}
		break;
		
		default:
		show_debug_message("Default");
}

x += xVel;
y += yVel;

if(!place_meeting(x,y,oWire)){
	if(withoutWireCount < 1){
		originX = x;
		originY = y;
	}
	xVel = irandom_range(-range, range);
	yVel = irandom_range(-range, range);
	withoutWireCount++;
	if (withoutWireCount > 4){
		instance_destroy();
	}
}

if(place_meeting(x,y,oRubber)){
	instance_destroy();
}

/*var otherCurrent = instance_place(x,y,oCurrent);
if(instance_exists(otherCurrent)){
	if((xVel + otherCurrent.xVel == 0 && yVel + otherCurrent.yVel == 0) && place_meeting(x,y,oWire)){
		instance_create_layer(x,y,"Instances",oExplosion);
	}
}*/