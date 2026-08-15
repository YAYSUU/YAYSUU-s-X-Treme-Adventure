/// @description moving object start
var extracheck = 0
if (vsp == 0)
	extracheck = grv
if (vsp >= 0)
	grounded = place_meeting(x, y + vsp + extracheck, obj_collision) || place_meeting(x, y + vsp + extracheck, obj_othercollision)

if (!grounded)
	vsp += grv