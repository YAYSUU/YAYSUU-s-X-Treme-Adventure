if (global.inlevel || (global.multiplayer & isotherplayer))
{
	if (hascollision)
		scr_draw_hitbox()
	
	var drawx
	var drawy
	if (image_angle % 90 == 0)
	{
		drawx = round(x)
		drawy = round(y)
	}
	else
	{
		drawx = x
		drawy = y
	}
	var damagealpha = 1
	if (damageflash)
		damagealpha = 0.5
	
	draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, visualrotation, image_blend, image_alpha * damagealpha)
	if (runanimtimer != -1)
		draw_sprite_ext(spr_boost, runanimtimer / 60 * 16, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha * damagealpha)
	if (showarrow)
		draw_sprite(spr_uparrow, (global.globaltimer / 8) % 4, x, y - 32)
	if (state == playerstates.golfstop) // hmmm. Is it easier to add 4 seperate sprites for different arrows? Probably. WHO CARES!
	{
		draw_sprite_ext(spr_uparrow, (global.globaltimer / 8) % 4, x, y - 32,1,1,0,c_white,1) // up
		draw_sprite_ext(spr_uparrow, (global.globaltimer / 8) % 4, x, y + 32,1,1,180,c_white,1) // down
		draw_sprite_ext(spr_uparrow, (global.globaltimer / 8) % 4, x - 32, y,1,1,90,c_white,1) // left
		draw_sprite_ext(spr_uparrow, (global.globaltimer / 8) % 4, x + 32, y,1,1,270,c_white,1) // right
	}
	if (state == playerstates.debug)
	{
		draw_set_font(global.smalloptfont)
		draw_set_halign(fa_center)
		draw_text(x, y+32, object_get_name(selecteddebugobject)+ "(" + string(selecteddebugobject) + ")")
		draw_set_halign(fa_left)
	}
}