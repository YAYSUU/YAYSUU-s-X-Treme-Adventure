// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_combometer(isp2){
	if (global.combo>0) || (comboshowtimer>60) {
		draw_sprite(combosprite,0,512+(isp2*640),64)
		draw_sprite(spr_combometer,0,480+(isp2*640),96)
		draw_set_colour(#FFEC27)
		if (isp2)
		{
			draw_primitive_begin(pr_trianglestrip)
			draw_vertex(485+640,97)
			draw_vertex(481+640,111)
			draw_vertex(485+round(global.combometer/2)+640,97)
			draw_vertex(481+round(global.combometer/2)+640,111)
			draw_primitive_end()
		}
		else {
			draw_primitive_begin(pr_trianglestrip)
			draw_vertex(485,97)
			draw_vertex(481,111)
			draw_vertex(485+round(global.combometer/2),97)
			draw_vertex(481+round(global.combometer/2),111)
			draw_primitive_end()
		}
		draw_set_color(c_white)
		draw_set_halign(fa_right)
		draw_text_yxa(592+(isp2*640),112,"x"+string(showncombo),"yellow",true)
	}
	else if (comboshowtimer <= 60) {
		draw_sprite_ext(combosprite,0,512+(isp2*640),64,1,1,0,c_white,comboshowtimer/60)
		draw_set_halign(fa_right)
		draw_set_alpha(comboshowtimer/60)
		draw_text_yxa(592+(isp2*640),112,string(showncombobonus),"yellow",true)
		draw_set_alpha(1)
	}
}