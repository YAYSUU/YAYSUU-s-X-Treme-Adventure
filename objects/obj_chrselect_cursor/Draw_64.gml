/// @description Insert description here
// You can write your code in this editor
// PLACEHOLDER SAVE DATA SCREEN!!! DON'T TOUCH!!! well.. if you're even ALIVE...
if !global.trial
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_sprite(spr_savebar,0,0,0)
	draw_set_font(global.subtitlefont)
	draw_text_yxa(16,16,chardescription,"white",false)
}
draw_set_font(global.font)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text(320,416,charname+(global.multiplayer ? "\n"+p2charname : ""))
draw_set_font(global.subtitlefont)