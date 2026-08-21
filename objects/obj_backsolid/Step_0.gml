/// @description Insert description here
// You can write your code in this editor
mycollision.active = (global.mainplayer.inbackground == isbackground)
if (global.multiplayer)
	mycollision2.active = (global.otherplayer.inbackground == isbackground)
event_inherited()