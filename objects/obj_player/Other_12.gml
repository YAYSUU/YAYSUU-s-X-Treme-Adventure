/// @description emit hangglider
with (instance_create_depth(x, y, depth+1, obj_loosehangglider))
{
	hsp = other.hsp
	vsp = other.vsp
	image_angle = other.visualrotation
	image_xscale = other.facingdirection
	if (other.key_jumpp)
		grv = -0.2
	else
		grv = 0.2
}