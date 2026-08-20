for (var i = 0; i < abs(image_xscale); i += 1)
{
    for (var j = 0; j < abs(image_yscale); j += 1)
	{
		instance_create_depth(x+i*32, y+j*32, depth, myobj)
	}
}
scr_layerobjects()
instance_destroy()