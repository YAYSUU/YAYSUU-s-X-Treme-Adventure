if global.trial || global.arcade || global.levelloadtype=loadtype.respawn
{
	global.currentsong=mus_boss_pt2
}
else {
	global.currentsong=-1
}
global.ambiencesound=-1
scr_windowtitle("Fight")
obj_parallax.indoors=true