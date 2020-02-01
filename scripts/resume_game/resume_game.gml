instance_activate_all();
audio_resume_all();
audio_play_sound(uTimeStop,10,false);
sprite_delete(pauseBack);
oCameraTracker.tracking = oPlayer;
global.pause = false;