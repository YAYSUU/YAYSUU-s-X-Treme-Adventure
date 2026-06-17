/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	instance_destroy()
	instance_create_depth(x,y,depth,obj_coincollect)
	scr_collectcoins(1)
}