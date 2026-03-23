/// @description Insert description here
// You can write your code in this editor
if global.mainplayer.state=playerstates.dead
	return;
if touchingplayer(x, y)
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