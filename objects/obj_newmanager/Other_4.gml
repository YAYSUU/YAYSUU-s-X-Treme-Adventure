if (global.currentsong == -1 && !(room=room_fclogo))
	audio_stop_all()
else if !audio_is_playing(global.currentsong) && !(room=room_fclogo)
{
	audio_stop_all()
	if global.currentsong=mus_title
	{
		audio_play_sound(global.currentsong, 1, false, global.musvol);
	}
	else {
		audio_play_sound(global.currentsong, 1, true, global.musvol);
	}
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
	if global.inboss
	{
		global.bosshp = 6
		global.maxbosshp = 6
	}
	
	if (global.levelloadtype == loadtype.newlevel && global.multiplayer)
	{
		global.otherplayer = instance_create_depth(0,0, 100, obj_player)
	}
}
if inwidescreen() // splitscreen check
{
	surface_resize(application_surface,1280,480)
	display_set_gui_size(1280,480)
	window_set_size(640*global.screenscale*2,480*global.screenscale)
	view_set_visible(0, true)
	view_set_wport(0, 640)
	view_set_hport(0, 480)
	view_set_xport(0, 0)
	view_set_yport(0, 0)
	view_camera[1] = camera_create_view(0,0,640,480)
	view_set_visible(1, true)
	view_set_wport(1, 640)
	view_set_hport(1, 480)
	view_set_xport(1, 640)
	view_set_yport(1, 0)
	instance_create_depth(0,0, 100, obj_p2camera)
}
if !(global.inlevel) && view_camera[1]
{
	camera_destroy(view_camera[1])
	instance_destroy(obj_p2camera)
	surface_resize(application_surface,640,480)
	display_set_gui_size(640,480)
	window_set_size(640*global.screenscale,480*global.screenscale)
}