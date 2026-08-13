draw_sprite_ext(sprite_index, 0, x, y, image_xscale, 1, 0, image_blend, image_alpha)
if (image_yscale > 2)
	draw_sprite_tileblock(sprite_index, 1, x, y+32, image_xscale, image_yscale-2, image_blend, image_alpha)
draw_sprite_ext(sprite_index, 2, x, y+(image_yscale*32)-32, image_xscale, 1, 0, image_blend, image_alpha)