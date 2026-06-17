/// @description Insert description here
// You can write your code in this editor
if (!donotannoymewhiletesting)
{
	if touchingplayer(x, y) && !hint
	{
		hint=true
		if !instance_exists(obj_hintdialoguebox)
		{
			with instance_create_depth(0,0,depth,obj_hintdialoguebox)
			{
				text=other.subtitle
				sprite=other.button
				subimg=other.subimg
				color="black"
				nobox=false
			}
		}
		audio_play_sound(snd_hint,1,false,global.sndvol)
	}
	if !touchingplayer(x, y) && hint
	{
		hint=false
		instance_destroy(obj_hintdialoguebox)
	}
}