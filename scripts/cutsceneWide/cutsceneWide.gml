///cutsceneWide(cutsceneObj)


if(rect1 < view_h/12) rect1 += 2;
if(rect2 > view_h*11/12) rect2 -= 2;

if(rect1 >= view_h/12 || rect2 <= view_h*11/12) {
	rect1 = view_h/12;
	rect2 = view_h*11/12;
	cutsceneEndAction();
	}


