/// @description Insert description here
// You can write your code in this editor
whichplayer = scr_closestplayer()
if !(strong && whichplayer.char!="T")
{
	if !(whichplayer.vulnerable) || (whichplayer.state=playerstates.stomp) || (whichplayer.state=playerstates.slide)
	{
		hascollision=false
	}
	else {
		hascollision=true
	}
}
else
	hascollision = true
if hascollision
	mycollision.y=y
else
	mycollision.y=-2763

if touchingplayer(x,y)
{
	with mycollision
	{
		if !touchingplayer(x,y)
			instance_destroy(other)
	}
}