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

if recording
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