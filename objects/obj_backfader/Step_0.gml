if (global.mainplayer.inbackground == (isbackground == vissetting))
{
	if (image_alpha < 1 && visible)
		image_alpha += 0.1
}
else
{
	if (image_alpha > 0 && visible)
		image_alpha -= 0.1
}
if (global.multiplayer)
{
	if (global.otherplayer.inbackground == (isbackground == vissetting))
	{
		if (otheralpha < 1 && visible)
			otheralpha += 0.1
	}
	else
	{
		if (otheralpha > 0 && visible)
			otheralpha -= 0.1
	}
}