/// @description Insert description here
// You can write your code in this editor
if !voicelineplayed
{
	audio_play_sound(voiceline,0,false,global.sndvol*2*global.voicelines)
	voicelineplayed=true
}