/// @description Insert description here
// You can write your code in this editor
ini_open("savedata.ini")
audio_master_gain(ini_read_real("settings","volume",1))
ini_close()