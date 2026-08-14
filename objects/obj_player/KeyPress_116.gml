/// @description Insert description here
// You can write your code in this editor
if (global.indev) && !(global.mobile)
{
	if (state == playerstates.debug)
	{
		audio_play_sound(snd_balloonpop, 1, false, global.sndvol)
		state = playerstates.normal
		newstate = playerstates.normal
	}
	else
	{
		state = playerstates.debug
		newstate = playerstates.debug
		scr_debugmessage("space = next, dash = spawn")
		scr_debugmessage("run = fast, run+space = prev")
		scr_debugmessage("run+dash = destroy spawned obj")
	}
}