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
				name="Sheila"
				text="La-la... Nothing like watching the sunset together..."
				color="white"
			}
			break;
			case 2:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				name="Sheila"
				text="Wouldn't you agree?"
				color="white"
			}
			break;
			case 3:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				name=global.char="Y" ? "YAYSUU" : "Teddy"
				text=global.char="Y" ? "..." : "Yeesh, get a room."
				color="white"
			}
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
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text=global.char="Y" ? "(You thought about saying something, but you couldn't bear.)" : "(Better get going!)"
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