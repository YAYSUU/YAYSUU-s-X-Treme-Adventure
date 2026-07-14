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
			saydialogue("You saw it too, didn't you?","white","SuperStick")
			break;
			case 2:
			saydialogue("The robots... the KIDNAPPING... These evil deeds...","white","SuperStick")
			break;
			case 3:
			saydialogue("Clearly, this must be the work of none other than...","white","SuperStick")
			break;
			case 4:
			saydialogue("`sEMPEROR EVILLUS!","red","SuperStick")
			break;
			case 5:
			saydialogue("Never fear, Concerned Citizen!","white","SuperStick")
			break;
			case 6:
			saydialogue("I, SuperStick, will save the day with my AWESOMETASTIC powers!","white","SuperStick")
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
			saydialogue("(Any day now...)")
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}