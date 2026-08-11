/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[view_current]);
var yy = camera_get_view_y(view_camera[view_current]);
draw_sprite(spr_uncannynews,0,xx,yy)
draw_text_yxa(xx-strlen*16+xoffset,yy+464,str+str,"white",true,string_length(str)*32)