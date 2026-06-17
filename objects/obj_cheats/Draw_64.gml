/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_alpha(0.5)
draw_set_color(c_black)
draw_rectangle(0,0,640,480,false)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(global.font)
draw_text(32,32,"CHEATS")
if global.mobile
{
	draw_text_yxa(32,64,string("Type in a cheat code. \n")+keyboard_string+string("\nPress Go to confirm \n") + rewardstring,"white",true,640)
	draw_sprite(spr_quit,0,544,384)
}
else {
	draw_text_yxa(32,64,string("Type in a cheat code. \n") + keyboard_string + string("\nPress enter to confirm \nPress escape or `d  to leave \n") + rewardstring,"white",true,640,global.buttonsprite ? spr_playstationbuttons : spr_xboxbuttons,5)
}
