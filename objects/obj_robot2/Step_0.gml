/// @description Insert description here
// You can write your code in this editor
event_user(10)

spotted = isbetween(global.mainplayer.x, x, x + 384*image_xscale)
if (!spotted && global.multiplayer)
	spotted = isbetween(global.otherplayer.x, x, x + 384*image_xscale)

if (insecret && spotted)
{
	if (secretsection.image_alpha == 1)
		spotted = false
}

if spotted
{
	if shoottimer>0
	{
		shoottimer--
		if (shoottimer == 20)
			sprite_index = spr_robot2_prefire
	}
	else
	{
		with (instance_create_depth(x + (24 * image_xscale), y - 6, depth + 1, obj_robot2_boolet))
			image_xscale = other.image_xscale
		audio_play_sound(snd_shoot,1,false,global.sndvol)
		sprite_index=spr_robot2_shoot
		shoottimer=60
	}
}
else
{
	shoottimer = 60
	sprite_index=spr_robot2
}
event_user(11)
event_inherited()