/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(jingle) || ((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(global.p1_controlslot,gp_start)) && !keyboard_check(vk_alt))
{
	loadroom(room_titlescreen, loadtype.menu)
	audio_stop_all()
}