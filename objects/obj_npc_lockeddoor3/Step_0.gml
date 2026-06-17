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
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text=choose("(This door is locked.)","(This door is blocked.)","(That door had a lock on it.)","(This door is oddly placed. Must be why it's locked.)","(Yup, this door is locked.)","(What, you just go checking every door you see?)","(These doors are not achievement-worthy.)","(Where would a door placed here lead anyhoo?)","(The architects of this place must have been on something.)","(Wait, is this door fake?)")
				color="white"
			}
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
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="(GET GOING!!!!)"
				color="red"
			}
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}