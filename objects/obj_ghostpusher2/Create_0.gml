// Inherit the parent event
if (!global.multiplayer)
	instance_destroy()
else
{
	event_inherited()
	myplayer = global.otherplayer
	idlesprite = spr_yost
	pushsprite = spr_yost_dieded
}