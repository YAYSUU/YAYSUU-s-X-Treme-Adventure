/// @description Insert description here
// You can write your code in this editor
if (audio_sound_get_track_position(syncsong)>=3.30 && slide=0) ||
(audio_sound_get_track_position(syncsong)>=5.74 && slide=1) ||
(audio_sound_get_track_position(syncsong)>=15.37 && slide=2) ||
(audio_sound_get_track_position(syncsong)>=17.18 && slide=3) ||
(audio_sound_get_track_position(syncsong)>=19.91 && slide=4) ||
(audio_sound_get_track_position(syncsong)>=25.78 && slide=5)
	slide++
if !audio_is_playing(syncsong)
	game_end()