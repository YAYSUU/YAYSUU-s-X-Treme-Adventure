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
	if (demoending) {
		obj_player.key_upp = false
		obj_player.key_downp = false
		obj_player.key_leftp = false
		obj_player.key_rightp = false
		obj_player.key_jumpp = false
		obj_player.key_dashp = false 
		obj_player.key_runp = false
		
		obj_player.key_up = false
		obj_player.key_down = false
		obj_player.key_left = false
		obj_player.key_right = false
		obj_player.key_jump = false
		obj_player.key_dash = false 
		obj_player.key_run = false
		demoendtimer--
		if demoendtimer == 0
			event_user(14)
		return
	}
	if (frameno == nexteventat) {
		obj_player.key_upp = demoman_event_up_pressed()
		obj_player.key_downp = demoman_event_down_pressed()
		obj_player.key_leftp = demoman_event_left_pressed()
		obj_player.key_rightp = demoman_event_right_pressed()
		obj_player.key_jumpp = demoman_event_jump_pressed()
		obj_player.key_dashp = demoman_event_dash_pressed()
		obj_player.key_runp = demoman_event_run_pressed()
		obj_player.key_up = demoman_event_up_pressed()
		obj_player.key_down = demoman_event_down_pressed()
		obj_player.key_left = demoman_event_left_pressed()
		obj_player.key_right = demoman_event_right_pressed()
		obj_player.key_jump = demoman_event_jump_pressed()
		obj_player.key_dash = demoman_event_dash_pressed()
		obj_player.key_run = demoman_event_run_pressed()
		
		blinkmsg  = "next event at " + string(nexteventat)
		blink = blinkmax
		
		if demoman_demo_next_event() == -1
		{
			if demoman_get_error() != ERR_NO_NEXT_EVENT && demoman_get_error() != ERR_NO_ERROR
				show_error("demoman error while reading next event: " + getdemomanerrorstring(demoman_get_error()), true)
			else {
				demoending = true
				demoendtimer = demoendtimerdefault
			}	
		}
		preveventat = frameno
		nexteventat = demoman_event_get_frame_number()
	}
	else if (frameno == preveventat+1)
	{
		obj_player.key_upp = false
		obj_player.key_downp = false
		obj_player.key_leftp = false
		obj_player.key_rightp = false
		obj_player.key_jumpp = false
		obj_player.key_dashp = false
		obj_player.key_runp = false
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
		if !demoman_demo_push_event(frameno, global.key_up, global.key_down, global.key_left, global.key_right, global.key_jump, global.key_dash, global.key_run, false)
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