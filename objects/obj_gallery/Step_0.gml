/// @description Insert description here
// You can write your code in this editor
if global.key_rightp
{
	if image_index=image_number-1
		image_index=0
	else
		image_index++
}
if global.key_leftp
{
	if image_index=0
		image_index=image_number-1
	else
		image_index--
}
else if global.key_dash
{
	audio_play_sound(snd_nahnvm,1,false,global.sndvol)
	instance_destroy()
}
switch image_index
{
	case 0:
	description="Fanart of YAYSUU and Teddy from kiasportage."
	break;
	case 1:
	description="Concept art for the Easthill Island, seen in the intro."
	break;
	case 2:
	description="YAYSUU's house, as seen in the intro, without a border obscuring it."
	break;
	case 3:
	description="Development notes from Fazmade regarding the level design of Mystic Manor 1."
	break;
	case 4:
	description="More notes, this time on the physics of bouncing on enemies. It's complex."
	break;
	case 5:
	description="Testing sprite fonts in Gamemaker. Nothing like a big boner down the"
	break;
	case 6:
	description="Early concept art for Mystic Manor's ghost enemies."
	break;
	case 7:
	description="Concept art regarding an unimplemented attack for Teddy."
	break;
	case 8:
	description="One of the first screenshots of YXA's development in Gamemaker. YAYSUU pong"
	break;
	case 9:
	description="A fanmade poster for the game by Milo Snugglepaws. (Sorry about the text...!)"
	break;
	case 10:
	description="Concept art for a boss we didn't get to make for this demo. Say hello to Skelly!"
	break;
	default:
	description="WOAH! UNUSED TEXT."
	break;
}
if global.key_start
{
	audio_play_sound(snd_nahnvm,1,false,global.sndvol)
	instance_destroy()
}
