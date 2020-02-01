if(instance_exists(oPlayer)){
oCameraTracker.tracking = oPlayer;
oCamera.x = oCameraTracker.tracking.x;
oCamera.y = oCameraTracker.tracking.y;
}

cutsceneEndAction();