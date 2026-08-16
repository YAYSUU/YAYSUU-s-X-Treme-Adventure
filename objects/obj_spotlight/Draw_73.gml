/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(spotsurf))
	spotsurf=surface_create(room_width,room_height)
surface_set_target(spotsurf)
draw_set_color(color)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_color(c_white)
if (global.inv && invultween < invultweenduration)
	invultween++
else if (!global.inv && invultween > 0)
	invultween--
if (invultween == 0)
{
	draw_sprite(spr_lightcookie, 0, global.mainplayer.x, global.mainplayer.y)
	if instance_exists(global.otherplayer)
		draw_sprite(spr_lightcookie, 0, global.otherplayer.x, global.otherplayer.y)
}
else if (invultween == invultweenduration)
{
	draw_sprite(spr_lightcookie_big, 0, global.mainplayer.x, global.mainplayer.y)
	if instance_exists(global.otherplayer)
		draw_sprite(spr_lightcookie_big, 0, global.otherplayer.x, global.otherplayer.y)
}
else
{
	var zise = 21
	if (global.inv)
		zise = 0.5+circsmooth(invultween/invultweenduration)*0.5
	else
		zise = 0.5+invertcircsmooth(invultween/invultweenduration)*0.5
	draw_sprite_ext(spr_lightcookie_big, 0, global.mainplayer.x, global.mainplayer.y, zise, zise, 0, c_white, 1)
	if instance_exists(global.otherplayer)
		draw_sprite_ext(spr_lightcookie_big, 0, global.otherplayer.x, global.otherplayer.y, zise, zise, 0, c_white, 1)
}
surface_reset_target()
gpu_set_blendmode(bm_subtract)
draw_surface(spotsurf,0,0)
gpu_set_blendmode(bm_normal)