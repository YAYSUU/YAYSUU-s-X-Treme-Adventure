// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sayscarymessage(msgid){
	with instance_create_depth(x,y,depth+1,obj_yoknovistmessage)
	{
		switch msgid
		{
			case 1:
			text="YOU CAN'T ESCAPE ME"
			voiceline=snd_youcantescapeme
			break;
			case 2:
			text="GET BACK HERE"
			voiceline=snd_getbackhere
			break;
			case 3:
			text="ABANDON ALL HOPE"
			voiceline=snd_abandonallhope
			break;
		}
	}
}