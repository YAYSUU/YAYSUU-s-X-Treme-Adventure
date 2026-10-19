/// @description Insert description here
// You can write your code in this editor
window_set_caption(casescramble(text))
if !audio_is_paused(global.currentsong) && audio_is_playing(voiceline)
	audio_pause_sound(global.currentsong)
if !audio_is_playing(voiceline)
	instance_destroy()