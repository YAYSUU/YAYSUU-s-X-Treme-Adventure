if global.trial || global.arcade || global.levelloadtype=loadtype.respawn
{
	global.currentsong=mus_chillfields_boss
}
else {
	global.currentsong=-1
}
global.ambience=snd_ambient_night
scr_windowtitle("A Dastardly Creation... VS. Electro-Bot!")
obj_parallax.indoors=true