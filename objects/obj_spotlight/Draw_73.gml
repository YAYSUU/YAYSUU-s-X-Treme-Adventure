/// @description Insert description here
// You can write your code in this editor
surface_set_target(spotsurf)
draw_set_color(color)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_color(c_black)
draw_circle(global.mainplayer.x,global.mainplayer.y,100,false)
if instance_exists(global.otherplayer)
	draw_circle(global.otherplayer.x,global.otherplay.y,100,false)
surface_reset_target()
gpu_set_blendmode(bm_subtract)
draw_surface(spotsurf,0,0)
gpu_set_blendmode(bm_normal)
draw_set_color(c_white)