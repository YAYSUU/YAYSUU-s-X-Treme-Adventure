/// @description bounce yahoo
newstate = playerstates.bounce
vsp = bounceheightsmaller
audio_play_sound(snd_stompland, 1, false, global.sndvol)
audio_play_sound(snd_bounce, 1, false, global.sndvol)
grounded = false
prevgrounded = false
djump = false
dshed = false
if (inbackground)
{
	if (!place_meeting(x, y, obj_backplate) && !place_meeting(x, y, obj_backdoor) && !place_meeting(x, y, obj_backsolid))
		inbackground = false
}