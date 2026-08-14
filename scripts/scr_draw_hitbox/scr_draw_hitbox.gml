// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_hitbox(){
	if (global.showcollision)
	{
		var mask = mask_index
		if (mask == -1)
			mask = sprite_index
		draw_sprite_ext(mask, 0, x, y, 1, 1, image_angle, hitboxcolor, 1)
		draw_sprite_ext(mask, 0, x + hsp, y + vsp, 1, 1, image_angle, hitboxcolor, 0.5)
	}
}