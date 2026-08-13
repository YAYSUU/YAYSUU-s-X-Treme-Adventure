if (keyboard_check_pressed(ord("Y")))
{
	global.skin = !global.skin
	with (obj_player)
		scr_setupcharacter("Y", global.skin)
	if (global.skin)
		audio_play_sound(snd_yanwin, 1, false)
	else
		audio_play_sound(snd_yaysuuwinstage, 1, false)
}