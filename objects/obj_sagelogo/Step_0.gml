 /// @description Insert description here
// You can write your code in this editor
image_xscale=clamp(image_xscale-0.01,1,2)
image_yscale=clamp(image_yscale-0.01,1,2)
image_alpha=clamp(image_alpha+0.05,0,1)
if audio_sound_get_track_position(global.currentsongplay)>=4.58
{
	faderect=true
	faderectalpha=clamp(faderectalpha+0.05,0,1)
}
if audio_sound_get_track_position(global.currentsongplay)>=5.34 && !whiter
{
	white=true
	whitealpha=clamp(whitealpha+0.1,0,1)
}
if whitealpha=1
{
	white=false
	whiter=true
}
if !white
	whitealpha=clamp(whitealpha-0.1,0,1)