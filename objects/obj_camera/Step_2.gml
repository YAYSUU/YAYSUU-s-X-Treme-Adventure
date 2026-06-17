/// @description Insert description here
// You can write your code in this editor
if (!global.inlevel)
	return

if (playertofollow.state != playerstates.dead)
{
	if (abs(playertofollow.x - x) > maxvarience || abs(playertofollow.y - y) > maxvarience)
	    followtimer = 60
	else if (playertofollow.hsp == 0 && playertofollow.vsp == 0 && (!dontunfocus))
	    followtimer--
	if (focusonpointstored != focusonpoint)
	{
	    focusonpointstored = focusonpoint
	    lerpy = 0
	}
	if ((followtimer > 0 || focusonpoint) && (!freezecamera))
	{
	    if (!focusonpoint)
	    {
	        focuspointx = playertofollow.x
	        focuspointy = playertofollow.y
	    }
		if (lerpy >= 1)
	    {
		    x = focuspointx
			y = focuspointy
	    }
		else
	    {
		    lerpy += lerpyincrease
			x = x * (1 - lerpy) + focuspointx * lerpy
	        y = y * (1 - lerpy) + focuspointy * lerpy
		}
	}
	else
	{
	    followtimer = 0
	    lerpy = 0
	}
}

if (playertofollow.state != playerstates.debug)
{
	x = clamp(x, 320, (room_width - 320))
	y = clamp(y, 240, (room_height - 240))
}

actualcamx = x
actualcamy = y

if (!focusonpoint)
{
	actualcamy += voffset
	
	var wantedspeedoffset = 0
	if (abs(playertofollow.hsp) > global.mainplayer.walkspeed)
	{
		wantedspeedoffset = playertofollow.hsp * speedoffsetscale
	}
	
	var speedoffsetspeed
	if (abs(wantedspeedoffset) > speedoffset * sign(wantedspeedoffset))
		speedoffsetspeed = speedoffsetspeedincrease
	else
		speedoffsetspeed = speedoffsetspeeddecrease
	
	if (abs(wantedspeedoffset - speedoffset) < speedoffsetspeed)
		speedoffset = wantedspeedoffset
	else
		speedoffset += sign(wantedspeedoffset - speedoffset) * speedoffsetspeed
	actualcamx += speedoffset
}

if global.screenshake
	vwobble = (-vwobble)
else
	vwobble=0
if vshakeoffset > 0
	vshakeoffset--
var shakey = vshakeoffset * vwobble
actualcamx = round(actualcamx)
actualcamy = round(actualcamy)
if (playertofollow.state != playerstates.debug)
{
	actualcamx = clamp(actualcamx, 320, (room_width - 320))
	actualcamy = clamp(actualcamy, 240, (room_height - 240))
}

deltax -= actualcamx
deltax *= -1
deltay -= actualcamy
deltay *= -1
if global.vibration {
	gamepad_set_vibration(global.p1_controlslot, -vwobble * vshakeoffset * 0.02, vwobble * vshakeoffset * 0.02)
	gamepad_set_vibration(global.p2_controlslot, -vwobble * vshakeoffset * 0.02, vwobble * vshakeoffset * 0.02)
}
else {
	gamepad_set_vibration(global.p1_controlslot, 0, 0)
	gamepad_set_vibration(global.p2_controlslot, 0, 0)
}
camera_set_view_pos(view_camera[cameraid], actualcamx - 320, (actualcamy - 240) + shakey)