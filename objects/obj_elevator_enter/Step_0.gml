if (movingplayer != noone)
{
	if (sprite_index == spr_elevator_opened)
		sprite_index = spr_elevator_close
	movingplayer.y--
	if (movingplayer.y <= obj_elevator_exit.y)
		event_user(0)
}
else if (touchingplayer(x, y) && global.firstplayertouch.char == "Y" && global.firstplayertouch.state != playerstates.elevate)
{
	if (sprite_index == spr_elevator_closed)
		sprite_index = spr_elevator_open
	global.firstplayertouch.showarrow = true
	if (global.firstplayertouch.key_upp && global.firstplayertouch.grounded)
	{
		movingplayer = global.firstplayertouch
		movingplayer.state = playerstates.elevate
		movingplayer.newstate = playerstates.elevate
		movingplayer.x = obj_elevator_exit.x
		audio_play_sound(snd_movingplatform_move, 1, true, global.sndvol)
		movingplayer.visible = false
	}
}
else if (sprite_index == spr_elevator_opened)
		sprite_index = spr_elevator_close