/// @description init demo mode
if global.demomode && !demorunning
{
	if !demoman_demo_open_read(game_save_id + "testdemo.dem")
	{
		scr_demomanhandler("open")
		return
	}
	
	demochar = demoman_demo_get_character()
	
	global.char=demochar
	scr_setupcharacter(demochar, 0)
	
	eventcount = demoman_demo_get_event_count()
	frameno = 0
	loadroom(demoman_demo_get_room_id(), loadtype.newlevel)
	demoman_demo_next_event()
	nexteventat = demoman_event_get_frame_number()
	demorunning = true
}