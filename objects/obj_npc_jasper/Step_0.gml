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
			saydialogue("(It's a small, sleeping self-insert.)")
			break;
			case 2:
			if instance_exists(obj_robot1)
			{
				talking=false
				talked=true
				obj_player.newstate=playerstates.normal
			}
			else {
				saydialogue("(Seems you saved him from that annoying orange...)")
			}
			break;
			case 3:
			saydialogue("(He will surely dream of a finished game...)")
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
			saydialogue("(The programmer takes a nap. Holdout! Programmer!)")
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}