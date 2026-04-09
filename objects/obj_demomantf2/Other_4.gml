/// @description Insert description here
// You can write your code in this editor
if global.recording && global.inlevel && !recording
{
	inp_up = false
	inp_down = false
	inp_left = false
	inp_right = false
	inp_jump = false
	inp_dash = false
	inp_run = false
	
	if !demoman_demo_open_new(game_save_id + "testdemo.dem")
	{
		scr_demomanhandler("open")
		return
	}
	
	demoman_demo_set_character(global.char)
	demoman_demo_set_room_id(room)
	
	// this is super broken atm, the seed value that eventually gets written to the file is completely wrong
	// maybe a signed int32 is not enough to store the seed
	demoman_demo_set_seed(random_get_seed())
	
	if !demoman_demo_update_header()
	{
		scr_demomanhandler("header")
		return
	}
	
	recording = true
	eventcount = 0
	frameno = 0
}