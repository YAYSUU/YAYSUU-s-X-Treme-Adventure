/// @description Insert description here
// You can write your code in this editor
previmage=-1
image_index=0
image_speed=0
if room=room_intro
{
	if global.char="Y"
	{
		sprite_index=spr_intro_y
	}
	if global.char="T"
	{
		sprite_index=spr_intro_t
	}
	nextroom=room_tutorial
	load=loadtype.newlevel
	song=mus_chillfields_hub
}
if room=room_ending
{
	sprite=spr_ending // haha sage ending
	nextroom=room_titlescreen
	load=loadtype.menu
	song=snd_ambient_night
}
limit=image_number-1
promptimer=3*global.defaultfps