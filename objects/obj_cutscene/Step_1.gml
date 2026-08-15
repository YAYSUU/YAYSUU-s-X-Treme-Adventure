/// @description Insert description here
// You can write your code in this editor
if previmage=image_index
	return;
if !audio_is_playing(song) && song!=-1
{
	audio_stop_all()
	if image_index>0
		audio_play_sound(snd_pageflip,1,false,global.sndvol)
	audio_play_sound(song,1,true,global.musvol)
}
if sprite_index=spr_intro_y // yaysuu intro triggers
{
	switch image_index
	{
		case 4:
		audio_play_sound(snd_beepbeepbeep,1,false,global.sndvol)
		break;
		case 5:
		audio_play_sound(snd_typewriterclick,1,false,global.sndvol)
		break;
		case 9:
		song=-1
		audio_stop_all()
		audio_play_sound(snd_recordscratch,1,false,global.sndvol)
		break;
		case 10:
		song=mus_panic
		break;
		case 17:
		song=mus_cutscene
		break;
	}
}
if sprite_index=spr_intro_t
{
	switch image_index
	{
		case 3:
		audio_play_sound(snd_beepbeepbeep,1,false,global.sndvol)
		break;
		case 4:
		audio_play_sound(snd_beepbeepbeep,1,false,global.sndvol)
		break;
		case 5:
		audio_play_sound(snd_kablooey,1,false,global.sndvol)
		break;
		case 8:
		song=-1
		audio_stop_all()
		audio_play_sound(snd_recordscratch,1,false,global.sndvol)
		break;
		case 9:
		song=mus_panic
		break;
		case 12:
		song=mus_cutscene
		break;
	}
}