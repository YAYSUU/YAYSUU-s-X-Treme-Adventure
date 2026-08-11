// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_trybounce(yepdashboing){
	if ((state == playerstates.stomp || (state == playerstates.bounce && char == "C") || (state == playerstates.dash && ((yepdashboing && grounded) || (!grounded)))) && newstate == state)
	{
		scr_player_dobounce(other.small)
	}
}
function scr_player_dobounce(issmall){
	newstate = playerstates.bounce
	if (abs(hsp) > walkspeed)
		vsp = bounceheightbigger
	else
		vsp = bounceheight
	audio_play_sound(snd_stompland, 1, false, global.sndvol*(!issmall))
	audio_play_sound(snd_bounce, 1, false, global.sndvol)
	grounded = false
	prevgrounded = false
	djump = false
	dshed = false
}