if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left))
{
	variable_global_set(myvar, !variable_global_get(myvar))
	audio_play_sound(snd_slip, 1, false)
}