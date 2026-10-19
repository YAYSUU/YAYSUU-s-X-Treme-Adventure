/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_stageclear)  
{
	if touchingplayer(x, y) && global.mainplayer.grounded && !(instance_exists(obj_dialoguebox)) && (!global.multiplayer) && !talking && !talked
	{
		dialogueprogress=0
		pancamera=true
		talking=true
		global.mainplayer.newstate = playerstates.inactive
		global.mainplayer.facingdirection = 1 // look in front of you stupid
		global.mainplayer.sprite_index = global.mainplayer.playersprites[playersprite.idle]
	}
}
if talking && pancamera
{
	if camera_get_view_x(view_camera[0])<8050
		cameraoffset+=4
	else
		pancamera=false
}
if talking && !pancamera
{
	if !instance_exists(obj_dialoguebox)
	{
		dialogueprogress++
		switch dialogueprogress
		{
			case 1:
			saydialogue("...Oh. It's YOU.","red","???",spr_dialoguebox_yoknovist)
			break;
			case 2:
			saydialogue("You better BELIEVE it's me, punk.","white","YAYSUU")
			obj_player.sprite_index=spr_yaysuu_talk_mad
			break;
			case 3:
			instance_create_depth(obj_yoknovist_cutscene1.x,obj_yoknovist_cutscene1.y-64,obj_yoknovist_cutscene1.depth,obj_speechbubble)
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_idle
			obj_player.sprite_index=spr_yaysuu_idle
			break;
			case 4:
			saydialogue("That look... Something about the way you...","red","???",spr_dialoguebox_yoknovist)
			break;
			case 5:
			saydialogue("...You... recognized me...?","red","???",spr_dialoguebox_yoknovist)
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_idle_close
			break;
			case 6:
			saydialogue("I'd recognize an old nemesis anywhere, reject.","white","YAYSUU")
			obj_player.sprite_index=spr_yaysuu_talk_mad
			break;
			case 7: 
			saydialogue("Ufufufu... Now this is interesting.","red","???",spr_dialoguebox_yoknovist)
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_laugh
			obj_player.sprite_index=spr_yaysuu_idle
			audio_play_sound(snd_ufufu,0,false,global.sndvol*4)
			break;
			case 8:
			saydialogue("Yeah, yeah, get to the POINT. Where are we?","white","YAYSUU")
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_idle_close
			obj_player.sprite_index=spr_yaysuu_talk_confused
			break;
			case 9:
			saydialogue("This place...?","red","???",spr_dialoguebox_yoknovist)
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_idle
			obj_player.sprite_index=spr_yaysuu_idle
			break;
			case 10:
			saydialogue("It's what's left of the `cyold world.","red","???",spr_dialoguebox_yoknovist)
			break;
			case 11:
			saydialogue("When the fabric of reality tore into pieces...","red","???",spr_dialoguebox_yoknovist)
			break;
			case 12:
			saydialogue("When the `cbtwo deities `crfought for control...","red","???",spr_dialoguebox_yoknovist)
			break;
			case 13:
			saydialogue("This little shard was abandoned.","red","???",spr_dialoguebox_yoknovist)
			break;
			case 14:
			saydialogue("And now it's my little world.","red","???",spr_dialoguebox_yoknovist)
			break;
			case 15:
			saydialogue("You and your friends...","red","???",spr_dialoguebox_yoknovist)
			break;
			case 16:
			saydialogue("You came from another world, just like it.","red","???",spr_dialoguebox_yoknovist)
			break;
			case 17:
			saydialogue("On a bustling little island, leading different lives.","red","???",spr_dialoguebox_yoknovist)
			break;
			case 18:
			saydialogue("So... HOW... did you REMEMBER??","red","???",spr_dialoguebox_yoknovist)
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_idle_close
			break;
			case 19:
			saydialogue("You're not the only one who can break that there 4th wall, y'know.","white","YAYSUU")
			obj_player.sprite_index=spr_yaysuu_talk_confused
			break;
			case 20:
			saydialogue("Oh. Of `sCOURSE `uit's some chicanery like that. It all makes sense now.","red","???",spr_dialoguebox_yoknovist)
			obj_player.sprite_index=spr_yaysuu_idle
			break;
			case 21:
			saydialogue("Of `scourse `uyou didn't die. Of `scourse `uyou lived on, somewhere else `sENTIRELY.","red","???",spr_dialoguebox_yoknovist)
			break;
			case 22:
			saydialogue("What else could I expect from the little `sCOCKROACH `uwho brought me into being?","red","???",spr_dialoguebox_yoknovist)
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_idle
			break;
			case 23:
			saydialogue("Woah, there, take it easy. I thought you were a 'changed demon' now...","white","YAYSUU")
			obj_player.sprite_index=spr_yaysuu_talk_relax
			break;
			case 24:
			saydialogue("Anyways, can we wrap this up? I got stages to be.","white","YAYSUU")
			obj_player.sprite_index=spr_yaysuu_talk_confused
			break;
			case 25:
			instance_create_depth(x,y,obj_yoknovist_cutscene1.depth+1,obj_yoknovistmessage)
			break;
			case 26:
			saydialogue("Why so in a rush, INGRATE?","red","???",spr_dialoguebox_yoknovist)
			obj_player.image_alpha=1
			obj_player.sprite_index=spr_yaysuu_idle
			break;
			case 27:
			saydialogue("Won't you indulge me just this once?","red","???",spr_dialoguebox_yoknovist)
			break;
			case 28:
			saydialogue("One final game, in this lonesome, crumbling, dying world...?","red","???",spr_dialoguebox_yoknovist)
			break;
			case 29:
			saydialogue("...Doesn't sound like I have much of a choice, do I?","white","YAYSUU")
			obj_player.sprite_index=spr_yaysuu_talk_surprised
			break;
			case 30:
			saydialogue("Ufufufu...","red","???",spr_dialoguebox_yoknovist)
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_laugh
			obj_player.sprite_index=spr_yaysuu_idle
			audio_play_sound(snd_ufufu,0,false,global.sndvol*4)
			break;
			case 31:
			saydialogue("Then I'll see you up ahead.","red","???",spr_dialoguebox_yoknovist)
			obj_yoknovist_cutscene1.sprite_index=spr_yoknovist_idle
			break;
			case 32:
			talking=false
			talked=true
			break;
		}
	}
}
if talked && cameraoffset>0
	cameraoffset-=4
if talked && cameraoffset=0
{
	instance_destroy()
	instance_destroy(inst_cutscenewall)
	instance_destroy(obj_yoknovist_cutscene1)
	obj_player.newstate=playerstates.normal
}