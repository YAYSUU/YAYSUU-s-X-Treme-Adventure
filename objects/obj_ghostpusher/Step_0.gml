if (mytrigger.attack)
{
	
	if (obj_player.bbox_left > bbox_right && image_xscale == 1) || (obj_player.bbox_right < bbox_left && image_xscale == -1)
		move_towards_point(obj_player.x, obj_player.y, 15)
	else
		move_towards_point(obj_player.x, obj_player.y, 5)
	
	if (touchingplayer(x, y, false))
	{
		obj_player.hsp = -6 * image_xscale
		sprite_index = spr_ghost1_dieded
		alarm[0] = 4
	}
}
else if (point_distance(x, y, xstart, ystart) < 6)
{
	x = xstart
	y = ystart
}
else
	move_towards_point(xstart, ystart, 5)

if (global.mainplayer.inbackground && place_meeting(x, y, obj_backplate))
{
	if (image_alpha > 0.5 && visible)
		image_alpha -= 0.05
}
else
{
	if (image_alpha < 1 && visible)
		image_alpha += 0.05
}