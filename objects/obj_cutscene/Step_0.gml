/// @description Insert description here
// You can write your code in this editor
previmage=image_index
if promptimer>0
	promptimer--
if ((global.key_jumpp || (mouse_check_button_pressed(mb_left) && global.mobile)) && image_index=limit) || (global.key_runp || (keyboard_check_pressed(vk_backspace) && global.mobile))
{
	if load=loadtype.newlevel
		loadnewstage(global.lives,nextroom)
	else
		loadroom(nextroom,load)
}
else if (global.key_jumpp || (mouse_check_button_pressed(mb_left) && global.mobile)) && image_index<limit
{
	image_index+=1
	audio_play_sound(snd_pageflip,1,false,global.sndvol)
}
