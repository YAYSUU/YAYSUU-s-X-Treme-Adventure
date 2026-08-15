event_user(10)
if touchingplayer(x, y, false) && grounded
{
	if (!global.firstplayertouch.vulnerable)
	{
		if (global.firstplayertouch.hsp != 0)
			image_xscale = sign(global.firstplayertouch.hsp)
		hsp = image_xscale * 8
		vsp = -8
		audio_play_sound(snd_stompland, 1, false)
		global.combo++
		global.combometer = 100
	}
	else if (global.secondplayertouch != noone)
	{
		if (!global.secondplayertouch.vulnerable)
		{
			if (global.secondplayertouch.hsp != 0)
				image_xscale = sign(global.secondplayertouch.hsp)
			hsp = image_xscale * 8
			vsp = -8
			audio_play_sound(snd_stompland, 1, false)
			global.combo++
			global.combometer = 100
		}
	}
}
if (hsp != 0)
{
	if place_meeting(x+hsp,y,obj_collision) || place_meeting(x+hsp,y,obj_turnaround) || place_meeting(x+hsp,y,obj_othercollision)
	{
		image_xscale = -image_xscale
		hsp = -hsp
		audio_play_sound(snd_stompland, 1, false)
	}
}
image_index = grounded
event_user(11)
