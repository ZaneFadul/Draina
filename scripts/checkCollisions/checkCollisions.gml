/// checkCollisions(obj, list)
/// @description pls work
/// @param obj
/// @param list of things to collide with

var listOfCollisions = argument1;

with(argument0){
	switch(array_length_1d(listOfCollisions)){
	case 1:
			//Horizontal
			if(place_meeting(x + xVel, y, listOfCollisions[0])){
				while(!place_meeting(x + sign(xVel), y, listOfCollisions[0])){
					x += sign(xVel);
				}
				xVel = 0;
			}
			
			//Diag
			
		
			//Vertical from Top
			if(place_meeting(x, y+yVel, listOfCollisions[0])){
				while(!place_meeting(x, y + sign(yVel), listOfCollisions[0])){
					y += sign(yVel);
				}
				yVel = 0;
			}
		
			//Grounded
		
			//inst.grounded = false;
		
			if(place_meeting(x, y + 1, listOfCollisions[0])){
				/*while(!place_meeting(inst.x, inst.y + 1, argument1[i])){
					inst.y += sign(inst.yVel);
				}*/
				grounded = true;
			} else {
				grounded = false;
			}
	break;
	
	case 2:
			//Horizontal
			if(place_meeting(x + xVel, y, listOfCollisions[0]) || place_meeting(x + xVel, y, listOfCollisions[1])){
				while(!instance_place(x + sign(xVel), y, listOfCollisions[0]) || !instance_place(x + sign(xVel), y, listOfCollisions[1])){
					x += sign(xVel);
				}
				xVel = 0;
			}
		
			//Vertical from Top
			if(place_meeting(x, y+yVel, listOfCollisions[0]) || place_meeting(x, y+yVel, listOfCollisions[1])){
				/*while(!place_meeting(x, y + sign(yVel), listOfCollisions[0]) || !place_meeting(x, y + sign(yVel), listOfCollisions[1])){
					y += sign(yVel);
				}*/
				yVel = 0;
			}
		
			//Grounded
		
			//inst.grounded = false;
		
			if(place_meeting(x, y + 1, listOfCollisions[0]) || place_meeting(x, y + 1, listOfCollisions[1])){
				/*while(!place_meeting(inst.x, inst.y + 1, argument1[i])){
					inst.y += sign(inst.yVel);
				}*/
				grounded = true;
			} else {
				grounded = false;
			}
	break;
	
	case 3:
			//Horizontal
			if(place_meeting(x + xVel, y, listOfCollisions[0]) || place_meeting(x + xVel, y, listOfCollisions[1]) || place_meeting(x + xVel, y, listOfCollisions[2])){
				while(!instance_place(x + sign(xVel), y, listOfCollisions[0]) || !instance_place(x + sign(xVel), y, listOfCollisions[1])  || !instance_place(x + sign(xVel), y, listOfCollisions[2])){
					x += sign(xVel);
				}
				xVel = 0;
			}
		
			//Vertical from Top
			if(place_meeting(x, y+yVel, listOfCollisions[0]) || place_meeting(x, y+yVel, listOfCollisions[1]) || place_meeting(x, y+yVel, listOfCollisions[2])){
				/*while(!place_meeting(x, y + sign(yVel), listOfCollisions[0]) || !place_meeting(x, y + sign(yVel), listOfCollisions[1])  || !place_meeting(x, y + sign(yVel), listOfCollisions[2])){
					y += sign(yVel);
				}*/
				yVel = 0;
			}
		
			//Grounded
		
			//inst.grounded = false;
		
			if(place_meeting(x, y + 1, listOfCollisions[0]) || place_meeting(x, y + 1, listOfCollisions[1]) || place_meeting(x, y + 1, listOfCollisions[2])){
				/*while(!place_meeting(inst.x, inst.y + 1, argument1[i])){
					inst.y += sign(inst.yVel);
				}*/
				grounded = true;
			} else {
				grounded = false;
			}
	break;
	
	case 4:
			//Horizontal
			if(place_meeting(x + xVel, y, listOfCollisions[0]) || place_meeting(x + xVel, y, listOfCollisions[1]) || place_meeting(x + xVel, y, listOfCollisions[2]) || place_meeting(x + xVel, y, listOfCollisions[3])){
				/*while(!place_meeting(x + sign(xVel), y, listOfCollisions[0]) || !place_meeting(x + sign(xVel), y, listOfCollisions[1])  || !place_meeting(x + sign(xVel), y, listOfCollisions[2])   || !place_meeting(x + sign(xVel), y, listOfCollisions[3])){
					x += sign(xVel);
				}*/
				xVel = 0;
			}
		
			//Vertical from Top
			if(place_meeting(x, y+yVel, listOfCollisions[0]) || place_meeting(x, y+yVel, listOfCollisions[1]) || place_meeting(x, y+yVel, listOfCollisions[2] || place_meeting(x, y+yVel, listOfCollisions[3]))){
				/*while(!place_meeting(x, y + sign(yVel), listOfCollisions[0]) || !place_meeting(x, y + sign(yVel), listOfCollisions[1]) || !place_meeting(x, y + sign(yVel), listOfCollisions[2])  || !place_meeting(x, y + sign(yVel), listOfCollisions[3])){
					y += sign(yVel);
				}*/
				yVel = 0;
			}
		
			//Grounded
		
			//inst.grounded = false;
		
			if(place_meeting(x, y + 1, listOfCollisions[0]) || place_meeting(x, y + 1, listOfCollisions[1]) || place_meeting(x, y + 1, listOfCollisions[2]) || place_meeting(x, y + 1, listOfCollisions[3])){
				/*while(!place_meeting(inst.x, inst.y + 1, argument1[i])){
					inst.y += sign(inst.yVel);
				}*/
				grounded = true;
			} else {
				grounded = false;
			}
	break;
	}
}