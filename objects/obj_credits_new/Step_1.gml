/// @description Insert description here
// You can write your code in this editor
if !playedsong && !audio_is_playing(syncsong)
{
	syncsong=audio_play_sound(mus_credits,0,false,global.musvol)
	with instance_create_depth(x,y,depth,obj_credits_lyrics)
		syncsong=other.syncsong
}