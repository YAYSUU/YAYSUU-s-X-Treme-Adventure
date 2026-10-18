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
				playaudiosingle=true
				dialoguesound=choose(snd_tutorialvo1,snd_tutorialvo2_y,snd_tutorialvo3_y,snd_tutorialvo4_y,snd_tutorialvo5_y,snd_tutorialvo6,snd_tutorialvo7)
				sprite=other.button
				subimg=other.subimg
				color="white"
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