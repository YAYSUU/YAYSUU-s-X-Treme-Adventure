if (global.currentsong == -1)
	audio_stop_all()
else if !audio_is_playing(global.currentsong)
{
	audio_stop_all()
	if global.currentsong=mus_title || room=room_gameover || room=room_fclogo || room=room_sagelogo
	{
		global.currentsongplay = audio_play_sound(global.currentsong, 1, false, global.musvol);
	}
	else {
		global.currentsongplay = audio_play_sound(global.currentsong, 1, true, global.musvol);
	}
}
if (global.ambiencesound == -1) || !(global.inlevel)
	audio_group_stop_all(ambience)
else if !audio_is_playing(global.ambiencesound)
{
	audio_group_stop_all(ambience)
	audio_play_sound(global.ambiencesound, 1, true, global.sndvol);
}
global.itempopupdepth = 100

if (global.levelloadtype == loadtype.newlevel || global.levelloadtype == loadtype.respawn)
{
	if global.bobcat
	{
		global.hp = 1
		global.maxhp = 1
		global.p2hp = 1
		global.p2maxhp = 1
	}
	else {
		global.hp = 3;
		global.maxhp = 3;
		global.p2hp = 3
		global.p2maxhp = 3
	}
	global.scoreadd = 0
	global.coins=0
	global.coingoal=100
	global.healgoal=50
	if global.inboss
	{
		global.bosshp = 6
		global.maxbosshp = 6
	}
}
if (global.inlevel)
	scr_layerobjects()
if inwidescreen() // splitscreen check
{
	surface_resize(application_surface,1282,480)
	display_set_gui_size(1282,480)
	window_set_size((640*global.screenscale*2)+2,480*global.screenscale)
	view_set_visible(0, true)
	view_set_wport(0, 640)
	view_set_hport(0, 480)
	view_set_xport(0, 0)
	view_set_yport(0, 0)
	view_camera[1] = camera_create_view(0,0,640,480)
	view_set_visible(1, true)
	view_set_wport(1, 640)
	view_set_hport(1, 480)
	view_set_xport(1, 642)
	view_set_yport(1, 0)
	instance_create_depth(0,0, 100, obj_p2camera)
	window_center()
}
else if view_camera[1]
{
	camera_destroy(view_camera[1])
	instance_destroy(obj_p2camera)
	surface_resize(application_surface,640,480)
	display_set_gui_size(640,480)
	window_set_size(640*global.screenscale,480*global.screenscale)
}