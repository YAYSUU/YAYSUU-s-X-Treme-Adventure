/// @description Insert description here
// You can write your code in this editor
if global.mainplayer.state=playerstates.dead
	return;
if touchingplayerspecific(x, y, global.mainplayer, 2)
{
	if (image_alpha > 0)
		image_alpha -= fadespeed
}
else
{
	if (image_alpha < 1)
		image_alpha += fadespeed
}
image_alpha = clamp(image_alpha, 0, 1)
if (global.multiplayer)
{
	if touchingplayerspecific(x, y, global.otherplayer, 2)
	{
		if (otheralpha > 0)
			otheralpha -= fadespeed
	}
	else
	{
		if (otheralpha < 1)
			otheralpha += fadespeed
	}
	otheralpha = clamp(otheralpha, 0, 1)
}