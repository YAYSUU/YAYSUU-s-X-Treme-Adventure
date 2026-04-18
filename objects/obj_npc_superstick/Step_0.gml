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
				name="SuperStick"
				text="You saw it too, didn't you?"
				color="white"
			}
			break;
			case 2:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				name="SuperStick"
				text="The robots... the KIDNAPPING... These evil deeds..."
				color="white"
			}
			break;
			case 3:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				name="SuperStick"
				text="Clearly, this must be the work of none other than..."
				color="white"
			}
			break;
			case 4:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				name="SuperStick"
				text="`sDR. EVIL!"
				color="red"
			}
			break;
			case 5:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				name="SuperStick"
				text="Never fear, Concerned Citizen!"
				color="white"
			}
			break;
			case 6:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				name="SuperStick"
				text="I, SuperStick, will save the day with my AWESOMETASTIC powers!"
				color="white"
			}
			break;
			case 7:
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
				text="(Any day now...)"
				color="white"
			}
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}