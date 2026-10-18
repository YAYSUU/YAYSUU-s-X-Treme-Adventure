/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_stageclear)  
{
	if touchingplayer(x, y) && global.mainplayer.grounded && !(instance_exists(obj_dialoguebox)) && (!global.multiplayer)
	{
		dialogueprogress=0
		talking=true
		global.mainplayer.newstate = playerstates.inactive
		global.mainplayer.facingdirection = 1 // look in front of you stupid
		global.mainplayer.sprite_index = global.mainplayer.playersprites[playersprite.idle]
	}
}
if talking && dialogueprogress=0
{
	if cameraoffset<240
		cameraoffset+=4
	if cameraoffset=240
		dialogueprogress=1
}