/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.5)
draw_set_colour(c_black)
draw_rectangle(0,0,640,480,false)
draw_set_alpha(1)
draw_set_colour(c_white)
draw_self()
draw_sprite(spr_savebar,0,0,0)
draw_sprite(spr_left,0,0,224)
draw_sprite(spr_right,0,576,224)
draw_set_valign(fa_top)
var promptext = "\n"+keytostring(global.p1_dashkey)+" - Exit  Left/Right - Cycle"
if global.inputtype=2
	promptext="\n`d  - Exit  Left/Right - Cycle"
if global.inputtype=3
	promptext="\nBack - Exit"
draw_text_yxa(16,16,(string(image_index+1))+"/"+(string(image_number))+"\n"+description+promptext,"white",false,624,global.buttonsprite ? spr_playstationbuttons : spr_xboxbuttons,5)