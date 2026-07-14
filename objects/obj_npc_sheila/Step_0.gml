/// @description Insert description here
// You can write your code in this editor
event_inherited()
if talking && !talked
{
	if !instance_exists(obj_dialoguebox)
	{
		dialogueprogress++
		switch dialogueprogress
		{
			case 1:
			saydialogue("La-la... Nothing like watching the sunset together...","white","Sheila")
			break;
			case 2:
			saydialogue("Wouldn't you agree?","white","Sheila")
			break;
			case 3:
			saydialogue(global.char="Y"?"...":"Yeesh, get a room.","white",global.char="Y"?"YAYSUU":"Teddy")
			break;
			case 4:
			talking=false
			talked=true
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}
else if talking && talked
{
	if !instance_exists(obj_dialoguebox)
	{
		dialogueprogress++
		switch dialogueprogress
		{
			case 1:
			saydialogue(global.char="Y"?"(You thought about saying something, but you couldn't bear.)":"(Better get going!)")
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}