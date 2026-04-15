/// @description stop event
if global.recording && recording {
	global.recording = false
	recording = false
	demoman_demo_flush_events()
	demoman_demo_close()
	blink = blinkmax
	blinkmsg = "demo saved!"
} else if global.demomode && demorunning {
	global.demomode = false
	demorunning = false
	demoending = false
	demoman_demo_close()
	loadroom(room_mainmenu, loadtype.menu)
}
