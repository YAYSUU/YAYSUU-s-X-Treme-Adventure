function draw_text_asset(txtass, x, y, dropshadow, progress = -1){
	var drawtype = txtass.dynamic
	if (progress > 0)
		drawtype = txtass_rendertype.full
	else if (progress == 0)
		return
	
	if (drawtype == txtass_rendertype.once || drawtype == txtass_rendertype.base)
	{
		if (!surface_exists(txtass.basesurf))
			txtassw_createbase(txtass, txtass_rendertype.base)
	}
	var textsurf = surface_create(txtass.width + dropshadow, txtass.height + dropshadow)
	//show_debug_message("doing da textsurf")
	surface_set_target(textsurf)
	switch (drawtype)
	{
		case txtass_rendertype.once:
			draw_surface(txtass.basesurf, x, y)
			break;
		case txtass_rendertype.base:
			draw_surface(txtass.basesurf, x, y)
			txtassw_render(txtass, txtass_rendertype.dynonly, progress)
			break;
		case txtass_rendertype.full:
			txtassw_render(txtass, txtass_rendertype.full, progress)
			break;
	}
	surface_reset_target()
	//show_debug_message("render fr tho")
	if (dropshadow)
	{
		draw_set_alpha(0.5)
		draw_set_colour(c_black)
		draw_surface(textsurf, x, y)
		draw_set_alpha(1)
		draw_set_colour(c_white)
	}
	draw_surface(textsurf, x-1, y-1)
	surface_free(textsurf)
}
enum txtass_rendertype{
	once, //var = only use base, render = only draw base
	base, //var = has a base but also dynamic, render = draw only base
	dynonly, //var = DONTUSE, render = draw only dynamic
	full //var = has no base, render = draw base (if used) and dynamics
}
enum txtass_parttype{
	string,
	sprite,
	set_shake,
	set_alpha,
	set_color
}
function txtass_make_basic(mestring, maxwidth, basecolor){
	var newasset = {
		dynamic : txtass_rendertype.once,
		basesurf : -1,
		width : maxwidth+2,
		height : 0,
		parts : [{ type : txtass_parttype.set_color, color : basecolor}]
	}
	var line = 0
	var workingstring = ""
	var linelength = 0
	for (var i = 1; i<=string_length(mestring); i++) {
		var ch = string_char_at(mestring, i)
		linelength += 16
		if (ch == "\n" || line > maxwidth)
		{
			array_push(newasset.parts, { type : txtass_parttype.string, str : workingstring, x : 1, y : line*16+1})
			workingstring = ch
			line++
			linelength = 0
		}
	}
	if (workingstring != "")
	{
		array_push(newasset.parts, { type : 0, str : workingstring, x : 0, y : line*16, col : basecolor})
	}
	newasset.height = (line+1)*16+2
	txtassw_createbase(newasset, txtass_rendertype.once)
	return newasset
}
function txtassw_render(txtass, renderamnt, progress = -1)
{
	draw_set_halign(0)
	var doshake = false
	for (var i = 0; i < array_length(txtass.parts); ++i)
	{
	    switch (txtass.parts[i].type)
		{
			case txtass_parttype.string:
				if (renderamnt == txtass_rendertype.base && doshake)
					break;
				else if (renderamnt == txtass_rendertype.dynonly && !doshake)
					break;
				var shakex = doshake ? irandom_range(-1, 1) : 0
				var shakey = doshake ? irandom_range(-1, 1) : 0
				draw_text(txtass.parts[i].x + shakex, txtass.parts[i].y + shakey, txtass.parts[i].str)
				break;
			case txtass_parttype.sprite:
				//implement later
				break;
			case txtass_parttype.set_shake:
				doshake = txtass.parts[i].shake
				break;
			case txtass_parttype.set_alpha:
				draw_set_alpha(txtass.parts[i].alpha)
				break;
			case txtass_parttype.set_color:
				draw_set_color(txtass.parts[i].color)
				break;
		}
	}
	draw_set_alpha(1)
	draw_set_colour(c_white)
}
function txtassw_createbase(txtass, rendertype)
{
	show_debug_message("MAKE BASE")
	txtass.basesurf = surface_create(txtass.width, txtass.height)
	surface_set_target(txtass.basesurf)
	txtassw_render(txtass, rendertype)
	surface_reset_target()
}
function txtass_destroy(txtass)
{
	if (surface_exists(txtass.basesurf))
		surface_free(txtass.basesurf)
}