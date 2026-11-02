/// @description Insert description here
// TODO: WHY IS THE STATE FOR ELECTROBOT FLASHING AFTER BEING HIT GONE. THAT MADE IT SO THAT 
// IF YOU DAMAGED ELECTROBOT, YOU HAD A BRIEF GRACE PERIOD TO GET OUT OF THE WAY OF 
// ELECTROBOT'S DAMAGE TOUCH. WHAT! WHAT!! WHAT!!!
enum electrobotstates
{
    idle,
    jump,
	thunder,
    spin,
	inactive,
	damaged,
	shoot,
	dying,
	fuckingdead,
}

event_user(10)
if global.hp=0 && state != electrobotstates.inactive
{
	shadowclonejutsu()
	y=288
	sprite_index=spr_yoknovist_laugh
	state = electrobotstates.inactive
}
switch (state)
{
	case electrobotstates.idle:
		hsp = 0
		if (obj_player.x > x)
			image_xscale = -1
		else if (obj_player.x < x)
			image_xscale = 1
		candamage = false
		if (!hasdamaged)
		{
			vulnerable = true
			if (touchingplayer(x, y))
			{
				var whichplayer = global.firstplayertouch
				if (global.firstplayertouch.vulnerable && global.secondplayertouch)
					whichplayer = global.secondplayertouch
					
				if (!whichplayer.vulnerable) || (whichplayer.char="E")
				{
					delay = 1337
					with (whichplayer)
						scr_player_trybounce(false)
					state = electrobotstates.damaged
					candamage = false
					vsp = -5
					hsp = -3 * -image_xscale
					audio_play_sound(snd_ouchie,1,false,global.sndvol)
					global.bosshp--
					scr_shake(30, false)
					hasdamaged = true
					if (global.bosshp == 6) //it gets HARDERS!?
					{
						idledelay = 90
						attackamount = 7
						if (global.hp < 3)
							instance_create_depth(320, -64, depth, obj_pizzamonitor)
					}
					grounded = false
				}
			}
		}
		if (delay > 0)
			delay--
		else if (grounded)
		{
			vulnerable = false
			state = choose(electrobotstates.jump, electrobotstates.spin, electrobotstates.shoot)
			while (state == prevattack)
				state = choose(electrobotstates.jump, electrobotstates.spin, electrobotstates.shoot)
			prevattack = state
			attackcount = attackamount
			hasdamaged = false
			switch (state) //ah yes switch statements in switch statements
			{
				case electrobotstates.jump:
					shadowclonejutsu()
					y = -48
					grounded = false
					break;
				case electrobotstates.spin:
					audio_play_sound(snd_speen,1,true,global.sndvol)
					vsp = -3
					break;
				case electrobotstates.shoot:
					shadowclonejutsu()
					sprite_index = spr_electrobot_shoot
					x=(global.mainplayer.x>320?32:608)
					image_index = 2
					delay = 30
					break;
			}
		}
		break;
	case electrobotstates.jump:
		if (y < -48)
		{
			state = electrobotstates.thunder
			y = -48
		}
		else if (vsp >= 0)
		{
			vsp = 0
			y -= 8
		}
		break;
	case electrobotstates.thunder:
		vsp = 0
		if (delay > 0)
			delay--
		else
		{
			if (attackcount == 0)
			{
				delay = idledelay + 30
				state = electrobotstates.idle
				vsp = 10
				gravityapplies = true
				if (obj_player.x > 320)
					x = 160
				else
					x = 480
			}
			else
			{
				delay = 20
				attackcount--
				instance_create_depth(random_range(0,608),-64,depth,obj_electrobot_warning)
				if global.multiplayer
					instance_create_depth(global.otherplayer.x-16,-64,depth,obj_electrobot_warning)
			}
		}
		break;
	case electrobotstates.spin:
		hsp = -image_xscale * 11
		if touchingplayer(x, y) // when i said give them a grace period, i didn't mean REMOVE THEIR HURT TOUCH ENTIRELY
		{
			global.firstplayertouch.ouchies = true
			if (global.secondplayertouch != noone)
				global.secondplayertouch.ouchies = true
		}
		if (place_meeting(x + hsp, y, obj_collision))
		{
			image_xscale = -image_xscale
			hsp = -image_xscale * 11
			attackcount--
			grounded = false
			vsp = -3
		}
		if (attackcount == 0 && grounded) || (attackcount < -1)
		{
			delay = idledelay
			state = electrobotstates.idle
			audio_stop_sound(snd_speen)
		}
		break;
	case electrobotstates.shoot:
		y=global.mainplayer.y
		if (delay > 0)
			delay--
		else
		{
			if (attackcount == 0)
			{
				delay = idledelay
				state = electrobotstates.idle
			}
			else
			{
				var target = scr_closestplayer()
				image_index = 0
				if (target.x > x)
					image_xscale = 1
				else if (target.x < x)
					image_xscale = -1
				with (instance_create_depth(x,y,depth+1,obj_electrobot_boolet))
					image_xscale = other.image_xscale	
				delay = 20
				attackcount--
			}
		}
		break;
	case electrobotstates.damaged:
		if (place_meeting(x + hsp, y, obj_collision))
			hsp = -hsp
		if (grounded)
		{
			if (global.bosshp == 0)
			{
				state = electrobotstates.dying
				delay = 150
				kablooeyjrtimer=0
				audio_stop_sound(global.currentsong)
			}
			else
			{
				idledamagedelay = 15
				state = electrobotstates.idle
				delay = idledelay
				vulnerable = false
			}
		}
		else if (vsp > 0 && touchingplayer(x, y) && !obj_player.vulnerable) //gives extra time for the player to leave the boss' hitbox
			vsp = -5
		break;
	case electrobotstates.dying:
		hsp = 0
		window_set_caption("ERROR")
		for (var i = 0; i<8; i++)
		{
			audio_play_sound(snd_nicetry,0,false,global.sndvol,0,1+(i*0.1))
			show_message("Error at line 41808")
		}
		global.inlevel=false
		global.inboss=false
		room_goto(room_credits)
		break;
	case electrobotstates.fuckingdead:
		if (!instance_exists(obj_explode) && !instance_exists(obj_goalflag))
		{
			if (global.multiplayer)
				instance_create_depth(320,-64,depth,obj_fallinggoalflag)
			else
			{
				if (obj_player.x > 320)
					instance_create_depth(160,-64,depth,obj_fallinggoalflag)
				else
					instance_create_depth(480,-64,depth,obj_fallinggoalflag)
			}
		}
		break;
}

var oldsprite = sprite_index
switch (state)
{
	case electrobotstates.idle:
		if (vulnerable)
			sprite_index = spr_yoknovist_vulnerable
		else
			sprite_index = spr_yoknovist_idle
		break;
	case electrobotstates.jump:
		sprite_index = spr_electrobot_jump
		break;
	case electrobotstates.spin:
		sprite_index = spr_yoknovist_run
		break;
	case electrobotstates.damaged:
		sprite_index = spr_electrobot_hurt
		break;
	case electrobotstates.shoot:
		sprite_index = spr_electrobot_shoot
		break;
	case electrobotstates.dying:
		sprite_index = spr_electrobot_dying
		break;
}
if (sprite_index != oldsprite)
	image_index = 0
	
if (sprite_index == spr_electrobot_jump && image_index == 6)
	image_index = 2

event_user(11)
event_inherited()
