/// @description Insert description here
// You can write your code in this editor
if faderect
{
	draw_set_colour(#FFFCF1)
	draw_set_alpha(faderectalpha)
	draw_rectangle(0,0,640,480,false)
	draw_set_alpha(1)
	draw_set_colour(c_white)
}
draw_self()
draw_set_alpha(whitealpha)
draw_sprite(spr_sagelogo_white,0,320,240)
draw_set_alpha(1)