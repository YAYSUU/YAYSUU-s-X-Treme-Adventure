// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shadowclonejutsu(){
	with instance_create_depth(x,y,depth,obj_boost_trail)
	{
		sprite_index=other.sprite_index
		image_index=other.image_index
		image_xscale=other.image_xscale
	}
}