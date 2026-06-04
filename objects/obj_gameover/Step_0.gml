/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(global.currentsong) || global.key_start
{
	audio_stop_all()
	if !global.trial
	{
		ini_open("savedata.ini")
		ini_write_real("file" + global.char,"lives",3)
		ini_close()
	}
	loadroom(room_titlescreen,loadtype.menu)
}