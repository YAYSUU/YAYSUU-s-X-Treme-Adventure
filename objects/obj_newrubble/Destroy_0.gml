/// @description Insert description here
// You can write your code in this editor
instance_destroy(mycollision)
audio_play_sound(breaksound, 1, false, global.sndvol, 0, random_range(0.8, 1.2))
scr_shake(2, true)
repeat (3)
{
	with(instance_create_depth(x, y, depth, obj_rubbledebris))
	{
		sprite_index = other.debrissprite
		if (instance_exists(other.whichplayer))
		{
			hsp = (sqrt(abs(other.whichplayer.hsp)) * sign(other.whichplayer.hsp)) + random_range(-2, 4)
			vsp = (sqrt(abs(other.whichplayer.vsp)) * sign(other.whichplayer.vsp)) + random_range(-6, 0)
		}
		else
		{
			hsp = random_range(-6, 6)
			vsp = random_range(8, 0)
		}
		rsp = random_range(-10, 10)
	}
}
global.scoreadd += 5