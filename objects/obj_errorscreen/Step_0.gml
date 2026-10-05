/// @description Insert description here
// You can write your code in this editor
if waittime=0
{
	fakeout=true
	sprite_index=spr_antipiracie_scarie
}
if waittime>0
	waittime--
if fakeout
{
	if global.key_jumpp
	{
		if msg<5
			msg++
		else
			loadroom(room_mainmenu,loadtype.menu)
	}
}
if global.key_runp
	loadroom(room_mainmenu,loadtype.menu)