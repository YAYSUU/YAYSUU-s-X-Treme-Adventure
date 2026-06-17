/// @description Insert description here
// You can write your code in this editor

if touchingplayer(x, y)
{
	if (!global.firstplayertouch.vulnerable) || (global.firstplayertouch.state = playerstates.hangglide)
	{
		whichplayerispurpeguymurderer = global.firstplayertouch
		instance_destroy()
		with (global.firstplayertouch)
			scr_player_trybounce(false)
	}
	else if (global.secondplayertouch != noone)
	{
		if (!global.secondplayertouch.vulnerable) || (global.secondplayertouch.state = playerstates.hangglide)
		{
			whichplayerispurpeguymurderer = global.secondplayertouch
			instance_destroy()
			with (global.secondplayertouch)
				scr_player_trybounce(false)
		}
	}
}