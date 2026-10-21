/// @description Insert description here
// You can write your code in this editor
glitchtimer--
if (glitchtimer == 0)
{
	sprite_index=spr_fclogo_corrupt
	winx = window_get_x()
	winy = window_get_y()
}
else if (glitchtimer < 0)
{
	y+=30
	window_set_caption(casescramble("Fishcat Studio!"))
	var glitchcyle = choose(0, 0, 0, 5, 10, 10, 50)
	window_set_position(winx + glitchcyle, winy + glitchcyle)//i love moving the windows vwv
}
if !audio_is_playing(global.currentsong) || ((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(global.p1_controlslot,gp_start)) && !keyboard_check(vk_alt))
{
	loadroom(nextroom, loadtype.menu)
	audio_stop_all()
}