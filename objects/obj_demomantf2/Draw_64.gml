if global.indev
{
	draw_set_font(global.smalloptfont)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)

	if global.recording
	{
		if global.inlevel
		{
			if recording
			{
				draw_text(0, 0, "recording")
				draw_text(0, 16, "frameno: " + string(frameno))
				
				var buttonspacing = 18
				
				 draw_sprite_ext(spr_mobilebuttons, 3, 0, 48, 1, 1, 0, inp_left ? c_white : c_black, 1)
				 draw_sprite_ext(spr_mobilebuttons, 0, buttonspacing, 48, 1, 1, 0, inp_up ? c_white : c_black, 1)
				 draw_sprite_ext(spr_mobilebuttons, 2, buttonspacing*2, 48, 1, 1, 0, inp_down ? c_white : c_black, 1)
				 draw_sprite_ext(spr_mobilebuttons, 1, buttonspacing*3, 48, 1, 1, 0, inp_right ? c_white : c_black, 1)
				 
				 draw_sprite_ext(spr_mobilebuttons, 4, buttonspacing*4, 48, 1, 1, 0, inp_jump ? c_white : c_black, 1)
				 draw_sprite_ext(spr_mobilebuttons, 5, buttonspacing*5, 48, 1, 1, 0, inp_dash ? c_white : c_black, 1)
				 draw_sprite_ext(spr_mobilebuttons, 6, buttonspacing*6, 48, 1, 1, 0, inp_run ? c_white : c_black, 1)
			} else
			{
				draw_text(0, 0, "please restart the level!")
			}
		}
		else
			draw_text(0, 0, "please enter a level!")
	} else
		draw_text(0, 0, "inactive")
		
	draw_set_alpha(blink / blinkmax)
	draw_text(0, 32, blinkmsg)
	draw_set_alpha(1)
	if (blink > 0) blink--
}