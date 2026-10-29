/// @description Insert description here
// You can write your code in this editor
instance_destroy()
audio_play_sound(snd_vanish,1,false,global.sndvol)
instance_destroy(obj_yoknovist)
audio_stop_sound(global.currentsong)
audio_play_sound(mus_run_finish,0,false,global.musvol)