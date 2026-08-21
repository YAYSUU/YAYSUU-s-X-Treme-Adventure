var alpha = image_alpha
if (global.multiplayer && view_current == 1)
	alpha = otheralpha
if (topsprite == noone)
	draw_sprite_tileblock(sprite_index, image_index, x, y, image_xscale, image_yscale, image_blend, alpha)
else
{
	draw_sprite_tileblock(topsprite, image_index, x, y, image_xscale, 1, image_blend, alpha)
	draw_sprite_tileblock(sprite_index, image_index, x, y + sprite_get_height(topsprite), image_xscale, image_yscale - 1, image_blend, alpha)
}