/// @description Insert description here
// You can write your code in this editor
if audio_sound_get_track_position(songsync) > 22.30
	redalpha=clamp(redalpha+0.005,0,1)
if !audio_is_playing(songsync)
{
	instance_destroy()
	with obj_player_bosscutscene
		event_perform(ev_alarm,1)
}