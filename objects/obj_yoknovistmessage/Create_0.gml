/// @description Insert description here
// You can write your code in this editor
audio_pause_sound(global.currentsong)
oldcaption=window_get_caption()
voiceline=audio_play_sound(snd_notsofast,0,false,global.sndvol*2)
text="NOT SO FAST"