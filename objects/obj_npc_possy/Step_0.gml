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
			saydialogue("Oh-oh... So mesmerizing...","white","Possy")
			break;
			case 2:
			saydialogue("Yet, so fleeting...","white","Possy")
			break;
			case 3:
			saydialogue(global.char="Y"?"Ain't that the truth...":"...whatever.","white",global.char="Y"?"YAYSUU":"Teddy")
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
			saydialogue(global.char="Y"?"You thought about sitting down, but you've got places to be.)":"(No time for playing around!)")
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}