// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inwidescreen(){
	return global.splitscreen && global.multiplayer && global.inlevel && room_width>640
}