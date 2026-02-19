/// @description Insert description here
// You can write your code in this editor
talking=false
bossname="ELECTRO-BOT"
stringchr=0
if global.trial || global.arcade || global.levelloadtype=loadtype.respawn
{
	global.cutscenestate=8 // CUTSCENES, ARE FOR STORY MODE!
	audio_stop_sound(mus_cutscene)
	sprite_index=spr_electrobot_idle
	global.currentsong=mus_chillfields_boss
	audio_play_sound(global.currentsong,1,true,global.musvol)
	alarm_set(0,15)
}
else {
	global.cutscenestate=0
}
sprite_index=spr_electrobot_idle
//alarm_set(0,15)
global.bosshp=6