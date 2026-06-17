/// @description Call HUD script
if global.inlevel && !global.inhub
{
	if (!instance_exists(obj_stageclear)) && (!instance_exists(obj_gameover))
	{
		draw_set_font(global.font)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		var healthheight = 128
		if (room=room_chillfields_boss)
		{
			boss_health_hearts(spr_fringleglasses)
			healthheight = 64
		}
		else
		{
			draw_sprite(spr_scoreicon,0,32,32)
			draw_text(64,32,string(global.score+global.scoreadd))
			draw_sprite(spr_stopwatch,0,32,64)
			draw_text(64, 64, timerstring)
			if room=room_glowstickcity
				draw_sprite(spr_uncannycoin,0,32,96)
			else if (global.char == "C")
				draw_sprite(spr_balloonicon,0,32,96)
			else
				draw_sprite(spr_yaysuucoinicon,0,32,96)
			draw_text(64,96,global.coins)
			if inwidescreen() // duplicate hud for player 2
			{
				draw_sprite(spr_scoreicon,0,32+640,32)
				draw_text(64+640,32,string(global.score+global.scoreadd))
				draw_sprite(spr_stopwatch,0,32+640,64)
				draw_text(64+640, 64, timerstring)
				if room=room_glowstickcity
					draw_sprite(spr_uncannycoin,0,32+640,96)
				else if (global.char == "C")
					draw_sprite(spr_balloonicon,0,32+640,96)
				else
					draw_sprite(spr_yaysuucoinicon,0,32+640,96)
				draw_text(64+640,96,global.coins)
			}
		}
		if !global.multiplayer
			health_system_hearts(spr_pizza, global.hp, global.maxhp, 32, healthheight)
		else if global.multiplayer {
			if inwidescreen()
			{
				health_system_hearts(spr_pizza, global.hp, global.maxhp, 32, healthheight)
				health_system_hearts(spr_pizza, global.p2hp, global.p2maxhp, 32+640, healthheight)
			}
			else {
				draw_sprite(global.mainplayer.playersprites[playersprite.lifeicon],0,32,healthheight)
				draw_sprite(global.otherplayer.playersprites[playersprite.lifeicon],0,32,healthheight+32)
				health_system_hearts(spr_pizza, global.hp, global.maxhp, 64, healthheight)
				health_system_hearts(spr_pizza, global.p2hp, global.p2maxhp, 64, healthheight+32)
			}
		}
		if (comboshowtimer > 0)
		{
			if (global.combo>0) || (comboshowtimer>60) {
				draw_sprite(combosprite,0,512,64)
				draw_sprite(spr_combometer,0,480,96)
				draw_set_colour(#FFEC27)
				draw_primitive_begin(pr_trianglestrip)
				draw_vertex(485,97)
				draw_vertex(481,111)
				draw_vertex(485+round(global.combometer/2),97)
				draw_vertex(481+round(global.combometer/2),111)
				draw_primitive_end()
				draw_set_color(c_white)
				draw_set_halign(fa_right)
				draw_text_yxa(592,112,"x"+string(showncombo),"yellow",true)
			}
			else if (comboshowtimer <= 60) {
				draw_sprite_ext(combosprite,0,512,64,1,1,0,c_white,comboshowtimer/60)
				draw_set_halign(fa_right)
				draw_set_alpha(comboshowtimer/60)
				draw_text_yxa(592,112,string(showncombobonus),"yellow",true)
				draw_set_alpha(1)
			}
			draw_set_halign(fa_left)
		}
		
		if (!global.showcollision) && !(instance_exists(obj_dialoguebox))
		{
			draw_set_font(global.font)
			if (!global.mobile)
			{
				draw_sprite(global.mainplayer.playersprites[playersprite.lifeicon],0,32,416)
				draw_text(64,416,global.lives)
				if inwidescreen()
				{
					draw_sprite(global.otherplayer.playersprites[playersprite.lifeicon],0,32+640,416)
					draw_text(64+640,416,global.lives) // department of redundancy department
				}
			}
			else
			{
				draw_sprite(global.mainplayer.playersprites[playersprite.lifeicon],0,480,32)
				draw_text(512,32,global.lives)
			}
		}
	}
}
