/// @description Call HUD script
if global.inlevel && !global.inhub
{
	if (!instance_exists(obj_stageclear)) && (!instance_exists(obj_gameover)) && (!instance_exists(obj_dialoguebox))
	{
		draw_set_font(global.font)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		var healthheight = 128
		if (global.inboss)
		{
			if global.bosshp=0
				var phase=2
			else if global.bosshp<=global.maxbosshp/2
				var phase=1
			else
				var phase=0
			draw_sprite(spr_electrobothead,phase,544,32)
			boss_health_hearts(spr_fringleglasses)
			healthheight = 32
		}
		else
		{
			draw_text(96,64,string(global.score+global.scoreadd))
			draw_sprite(spr_stopwatch,0,32,96)
			draw_text(64, 96, timerstring)
			if room=room_glowstickcity
				draw_sprite(spr_uncannycoin,0,32,128)
			else
				draw_sprite(spr_yaysuucoinicon,0,32,128)
			draw_text(64,128,global.coins)
			if inwidescreen() // duplicate hud for player 2
			{
				draw_sprite(spr_stopwatch,0,32+640,96)
				draw_text(64+640, 96, timerstring)
				if room=room_glowstickcity
					draw_sprite(spr_uncannycoin,0,32+640,128)
				else
					draw_sprite(spr_yaysuucoinicon,0,32+640,128)
				draw_text(64+640,128,global.coins)
			}
		}
		if !global.multiplayer
		{
			draw_sprite(global.mainplayer.playersprites[playersprite.lifeicon],global.hp,32,32)
			health_system_hearts(global.mainplayer.playersprites[playersprite.healthicon], global.hp, global.maxhp, 96, 32)
			draw_text(96+(32*global.maxhp),32,global.lives)
		}
		else if global.multiplayer {
			if inwidescreen()
			{
				draw_sprite(global.mainplayer.playersprites[playersprite.lifeicon],global.hp,32,32)
				health_system_hearts(global.mainplayer.playersprites[playersprite.healthicon], global.hp, global.maxhp, 96, 32)
				draw_text(96+(32*global.maxhp),32,global.lives)
				draw_sprite(global.otherplayer.playersprites[playersprite.lifeicon],global.p2hp,32+640,32)
				health_system_hearts(global.otherplayer.playersprites[playersprite.healthicon], global.p2hp, global.p2maxhp, 96+640, 32)
				draw_text(96+(32*global.p2maxhp)+640,32,global.lives)
			}
			else {
				draw_sprite(global.mainplayer.playersprites[playersprite.lifeicon],global.hp,32,32)
				draw_sprite(global.otherplayer.playersprites[playersprite.lifeicon],global.p2hp,32,384)
				health_system_hearts(global.mainplayer.playersprites[playersprite.healthicon], global.hp, global.maxhp, 96, 32)
				health_system_hearts(global.otherplayer.playersprites[playersprite.healthicon], global.p2hp, global.p2maxhp, 96, 384)
				draw_text(96+(32*global.maxhp),32,global.lives)
			}
		}
		if (comboshowtimer > 0)
		{
			draw_combometer(false)
			if inwidescreen()
				draw_combometer(true)
			draw_set_halign(fa_left)
		}
	}
	if inwidescreen()
	{
		draw_set_color(c_black)
		draw_line(640,0,640,480)
		draw_line(641,0,641,480)
		draw_set_color(c_white)
	}
}
