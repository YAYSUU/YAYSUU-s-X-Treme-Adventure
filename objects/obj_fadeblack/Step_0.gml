/// @description Insert description here
// You can write your code in this editor
image_alpha=clamp(image_alpha,0,1)
color=colors[colorindex]
var fadespeed = global.quickmenu ? 5 : 1;
if fading
{
	if (instaswitch)
	{
		preloadactualroom()
		room_goto(global.nextroom)
		return
	}
	if (colorindex == 15)
	{
		preloadactualroom()
		room_goto(global.nextroom)
	}
	else
		colorindex++
}
else
{
	if (colorindex > 0)
		colorindex--
}
//else if image_alpha > 0
//{
//	image_alpha-=0.05
//}
