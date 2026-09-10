/// @description Insert description here
// You can write your code in this editor
if (global.inlevel)
{
	var filename="screenshot_"+string(date_get_month(date_current_datetime()))+"_"+string(date_get_day(date_current_datetime()))+"_"+string(date_get_year(date_current_datetime()))+"_"+string(round(random_range(0,41808)))+".png"
	screen_save(filename)
	scr_debugmessage("saved file as "+filename)
}