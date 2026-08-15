with (movingplayer)
{
	x = obj_elevator_exit.x
	y = obj_elevator_exit.y
	newstate = playerstates.normal
	state = playerstates.normal
	visible = true
	grounded = true
	prevgrounded = true
	vsp = 0
}
movingplayer = noone
audio_stop_sound(snd_movingplatform_move)
audio_play_sound(snd_movingplatform_change, 1, false, global.sndvol)
with (obj_elevator_exit)
	event_user(0)