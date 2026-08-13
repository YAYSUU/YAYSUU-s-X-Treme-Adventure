if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left))
{
	global.char = mychar
	global.p2char = mychar="Y"?"T":"Y"
	with (obj_player)
		scr_setupcharacter(other.mychar, global.skin)
	audio_play_sound(snd_slip, 1, false)
}