/// @description Insert description here
// You can write your code in this editor
mycollision = instance_create_depth(x, y, depth - 1, obj_player1solid)
mycollision.image_xscale = image_xscale
mycollision.image_yscale = image_yscale
if (global.multiplayer)
{
	mycollision2 = instance_create_depth(x, y, depth - 1, obj_player2solid)
	mycollision2.image_xscale = image_xscale
	mycollision2.image_yscale = image_yscale
}
event_inherited()
vissetting = true