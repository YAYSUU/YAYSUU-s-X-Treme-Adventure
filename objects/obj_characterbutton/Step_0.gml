if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left))
{
	global.char = mychar
	scr_setupcharacter(mychar, 0)
	audio_play_sound(snd_slip, 1, false)
}