/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(global.optfont)
draw_text(x,y + image_yscale*32 - 32, string(timer/60))