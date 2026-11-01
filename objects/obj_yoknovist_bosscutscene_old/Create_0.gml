/// @description Insert description here
// You can write your code in this editor
talking=false
bossname="YOKNOVIST"
stringchr=0
if global.levelloadtype=loadtype.respawn
{
	audio_stop_sound(mus_welcome)
	sprite_index=spr_yoknovist_idle
	image_xscale=-1
	global.currentsong=mus_boss_pt2
	audio_play_sound(global.currentsong,1,true,global.musvol*2)
	event_perform(ev_alarm,1)
}
sprite_index=spr_yoknovist_idle
image_xscale=-1
//alarm_set(0,15)
global.bosshp=6