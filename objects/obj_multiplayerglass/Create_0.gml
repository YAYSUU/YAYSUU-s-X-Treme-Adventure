if (global.multiplayer)
{
	if (room == room_mysticmanor_1)
		instance_create_depth(x, y, depth, obj_rubble)
	else
		instance_create_depth(x, y, depth, obj_glass)
	instance_destroy()
}