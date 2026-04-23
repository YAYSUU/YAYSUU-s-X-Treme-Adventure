/// @description Insert description here
// You can write your code in this editor
if global.pause
{
	if global.inputtype = 3 // WHOSE IDEA WAS THIS?! FORCED TOUCHSCREEN? ...Oh wait, it was me. This code is ancient.
	{
		draw_sprite_tiled(spr_lvlselectbg,0,scroll,scroll)
		draw_set_color(c_black)
		draw_rectangle(0,0,-10000,480,false)
		draw_rectangle(display_get_gui_width,0,10000+display_get_gui_width,480,false)
		draw_set_color(c_white)
		draw_sprite(spr_paused,0,192,128)
		draw_sprite(spr_resume,0,160,224)
		if room=room_househub || room=room_househub_extra || global.lives<=1
		{
			draw_set_alpha(0.5)
		}
		else
		{
			draw_set_alpha(1)
		}
		draw_sprite(spr_redo,0,288,224) // lalalalala mobile players don't get widescreen so no need to account
		draw_set_alpha(1)
		draw_sprite(spr_quit,0,416,224)
	}
	else
	{
		draw_set_valign(fa_top)
		draw_sprite_tiled(spr_lvlselectbg,0,scroll,scroll)
		draw_set_color(c_black)
		draw_rectangle(0,0,-10000,480,false)
		draw_rectangle(display_get_gui_width,0,10000+display_get_gui_width,480,false)
		draw_rectangle(0,-10480,display_get_gui_width,0,false)
		draw_rectangle(0,480,display_get_gui_width,10480,false)
		draw_set_color(c_white)
		draw_sprite(spr_paused,0,display_get_gui_width()/2,128)
		draw_set_font(global.font)
		draw_set_halign(fa_center)
		draw_text(display_get_gui_width()/2,224,"RESUME")
		if room=room_househub || room=room_househub_extra || global.lives<=1
			draw_set_alpha(0.5)
		else
			draw_set_alpha(1)
		draw_text(display_get_gui_width()/2,256,"RETRY")
		draw_set_alpha(1)
		draw_text(display_get_gui_width()/2,288,"QUIT")
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_sprite(spr_menucursor,0,display_get_gui_width()/2-(32*4),224 + cursor * 32)
	}
}