/// @description Insert description here
// You can write your code in this editor

function inputschanged() {
	return global.key_up != inp_up
		|| global.key_down != inp_down
		|| global.key_left != inp_left
		|| global.key_right != inp_right
		|| global.key_jump != inp_jump
		|| global.key_dash != inp_dash
		|| global.key_run != inp_run
}
if demorunning
{
	if (frameno == nexteventat) {
		dontclearpressed = true
		
		obj_player.key_up = demoman_event_up_pressed()
		obj_player.key_upp = obj_player.key_up
		obj_player.key_down = demoman_event_down_pressed()
		obj_player.key_downp = obj_player.key_down
		obj_player.key_left = demoman_event_left_pressed()
		obj_player.key_leftp = obj_player.key_left
		obj_player.key_right = demoman_event_right_pressed()
		obj_player.key_rightp = obj_player.key_right
		
		obj_player.key_jump = demoman_event_jump_pressed()
		obj_player.key_jumpp = obj_player.key_jump
		obj_player.key_dash = demoman_event_dash_pressed()
		obj_player.key_dashp = obj_player.key_dash
		obj_player.key_run = demoman_event_run_pressed()
		obj_player.key_runp = obj_player.key_run
		
		blinkstring = "next event at " + string(nexteventat)
		blink = blinkmax
		
		if demoman_demo_next_event() == -1
			if demoman_get_error() != ERR_NO_NEXT_EVENT && demoman_get_error() != ERR_NO_ERROR
				show_error("demoman error while reading next event: " + getdemomanerrorstring(demoman_get_error()), true)
		else {
			event_user(14)	
		}
	
		nexteventat = demoman_event_get_frame_number()
	}
	
	
	dontclearpressed = false
	frameno++
}
else if recording
{
	if instance_exists(obj_stageclear)
	{
		event_user(14)
		return
	}
	
	if inputschanged()
	{
		if !demoman_demo_push_event(frameno, inp_up, inp_down, inp_left, inp_right, inp_jump, inp_dash, inp_run, false)
			scr_demomanhandler("push")
		eventcount++
		blink = blinkmax
		blinkmsg = "event " + string(eventcount) + " pushed!"
	}
	
	inp_up = global.key_up
	inp_down = global.key_down
	inp_left = global.key_left
	inp_right = global.key_right
	inp_jump = global.key_jump
	inp_dash = global.key_dash
	inp_run = global.key_run
	
	frameno++
}