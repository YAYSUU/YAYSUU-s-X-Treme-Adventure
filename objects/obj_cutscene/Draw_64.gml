/// @description Insert description here
// You can write your code in this editor
if promptimer>global.defaultfps
	draw_set_alpha(1)
else
	draw_set_alpha(promptimer/global.defaultfps)
draw_set_halign(fa_right)
if global.inputtype=0
{
	draw_text_yxa(624,432,"Press "+keytostring(global.p1_jumpkey)+" to advance","white",true)
	draw_text_yxa(624,448,"Press "+keytostring(global.p1_runkey)+" to skip","white",true)
}
if global.inputtype=2
{
	draw_text_yxa(624,432,"Press`d   to advance","white",true,,global.buttonsprite ? spr_playstationbuttons : spr_xboxbuttons,4)
	draw_text_yxa(624,448,"Press`d   to skip","white",true,,global.buttonsprite ? spr_playstationbuttons : spr_xboxbuttons,6)
}
if global.inputtype=3
{
	draw_text_yxa(624,432,"Tap to advance","white",true)
	draw_text_yxa(624,448,"Tap back button to skip","white",true)
}
draw_set_alpha(1)