/// @description Insert description here
// You can write your code in this editor
if (!global.inlevel)
	return;
var xx = camera_get_view_x(view_camera[view_current]);
var yy = camera_get_view_y(view_camera[view_current]);
if layer_exists("layer3")
{
	layer_x("layer3", xx)
	layer_y("layer3", yy)
}
if layer_exists("layer2")
{
	layer_x("layer2", (xx/6))
	if indoors
		layer_y("layer2",yy)
	else
		layer_y("layer2",(yy/6)+(instance_exists(obj_parallaxh) ? obj_parallaxh.y/2 : obj_spawn.y/2))
}
if layer_exists("layer1")
{
	layer_x("layer1", (xx/8)+320)
	if indoors
		layer_y("layer1",yy)
	else
		layer_y("layer1", (yy/8))
}