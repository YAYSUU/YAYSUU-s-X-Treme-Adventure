/// @description Insert description here
// You can write your code in this editor
if (audio_sound_get_track_position(syncsong)>=3.30 && slide=0) ||
(audio_sound_get_track_position(syncsong)>=4.11 && slide=1) ||
(audio_sound_get_track_position(syncsong)>=5.74 && slide=2) ||
(audio_sound_get_track_position(syncsong)>=7.37 && slide=3) ||
(audio_sound_get_track_position(syncsong)>=10.88 && slide=4) ||
(audio_sound_get_track_position(syncsong)>=12.93 && slide=5) ||
(audio_sound_get_track_position(syncsong)>=15.37 && slide=6) ||
(audio_sound_get_track_position(syncsong)>=17.18 && slide=7) ||
(audio_sound_get_track_position(syncsong)>=19.91 && slide=8) ||
(audio_sound_get_track_position(syncsong)>=23.10 && slide=9) ||
(audio_sound_get_track_position(syncsong)>=25.78 && slide=10)
	slide++
if !audio_is_playing(syncsong)
	game_end()