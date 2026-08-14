/// @description Insert description here
// You can write your code in this editor
mycollision = instance_create_depth(x, y, depth - 1, obj_notsemisolid)
hascollision=false
strong=false
weakahh = false
whichplayer=global.mainplayer
if (room == room_chillfields_2 || room == room_chillfields_2b || room == room_chillfields_2c || room == room_mysticmanor_2b || room == room_mysticmanor_2c || room == room_mysticmanor_2d)
{
	debrissprite = spr_rubbledebris_dark
	sprite_index = spr_rubble_cave
}
else
	debrissprite = spr_rubbledebris
breaksound = snd_breakrubble