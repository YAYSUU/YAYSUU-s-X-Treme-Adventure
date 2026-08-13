/// @description Insert description here
// You can write your code in this editor
if (touchingplayer(x,y, false) || touchingplayer(x,y, true))
{
	global.firstplayertouch.showarrow = true
	if (global.firstplayertouch.key_upp && global.firstplayertouch.grounded)
		global.firstplayertouch.inbackground = !global.firstplayertouch.inbackground
}