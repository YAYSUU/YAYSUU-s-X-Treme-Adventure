x += hsp
vsp += grv
y += vsp
image_angle += grv * image_xscale * -5
if (y < -64 || y > room_height + 64)
	instance_destroy()