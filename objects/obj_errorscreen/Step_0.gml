/// @description Insert description here
// You can write your code in this editor
if waittime=0
{
	fakeout=true
	audio_play_sound(mus_welcome,0,true,global.musvol)
	sprite_index=spr_antipiracie_scarie
	waittime=-1
}
if waittime>0
	waittime--
if fakeout
{
	if global.key_jumpp
	{
		if msg<6
			msg++
		else
			loadroom(room_mainmenu,loadtype.menu)
	}
}
if global.key_runp
	loadroom(room_mainmenu,loadtype.menu)