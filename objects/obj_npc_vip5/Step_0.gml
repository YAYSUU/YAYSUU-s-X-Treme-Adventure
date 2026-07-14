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
			saydialogue("lalalalala i love this manor!!! ^w^ really helps appease The Demons :3","pink","???")
			break;
			case 3:
			saydialogue("(They seem content. Best not to disturb...)")
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
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="(Better get going!)"
				color="white"
			}
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
		}
	}
}