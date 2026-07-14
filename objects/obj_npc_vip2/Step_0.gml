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
			saydialogue("(Knock knock...)","white",,snd_knockknock,true)
			break;
			case 2:
			saydialogue("i'm the grass man, but, oh man... there's no grass here! what do they want me to do?!","green","???")
			break;
			case 3:
			saydialogue("(Seems you can't go in...)")
			break;
			case 4:
			talking=false
			talked=true
			obj_player.newstate=playerstates.normal
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
			saydialogue("(Better get going!)")
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
		}
	}
}