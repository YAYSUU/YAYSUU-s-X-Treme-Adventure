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
			if (!global.multiplayer)
				saydialogue(choose("(This door is locked.)","(This door is blocked.)","(That door had a lock on it.)","(This door is oddly placed. Must be why it's locked.)","(Yup, this door is locked.)","(What, you just go checking every door you see?)","(These doors are not achievement-worthy.)","(Where would a door placed here lead anyhoo?)","(The architects of this place must have been on something.)","(Wait, is this door fake?)"))
			else
				saydialogue("(Maybe try the one to the right instead.)")
			break;
			case 2:
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
			saydialogue("`s(GET GOING!!!)","red")
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}