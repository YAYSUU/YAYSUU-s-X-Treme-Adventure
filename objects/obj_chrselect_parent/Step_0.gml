/// @description Insert description here
// You can write your code in this editor
if obj_chrselect_cursor.selected=true && ((obj_chrselect_cursor.chos=chosindex && !global.multiplayer) || global.multiplayer) && sprite_index!=selectedsprite
{
	sprite_index=selectedsprite
	image_index=0
}
else if sprite_index=selectedsprite && obj_chrselect_cursor.selected=false
{
	sprite_index=unselectedsprite
}