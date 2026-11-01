/// @description Insert description here
// You can write your code in this editor
if !talking && x<=160
{
	x+=2
	sprite_index=global.mainplayer.playersprites[playersprite.walk]
}
else if !talking {
	dialogueprogress=0
	talking=true
	sprite_index = global.mainplayer.playersprites[playersprite.idle]
	x=160
}
if talking && !pancamera
{
	if global.key_runp
	{
		instance_destroy(obj_dialoguebox)
		dialogueprogress=endialog-1
	}
	if !instance_exists(obj_dialoguebox)
	{
		dialogueprogress++
		switch global.char
		{
			case "Y":
			switch dialogueprogress
			{
				case 1:
				saydialogue("End of the line, copycat!","white","YAYSUU")
				sprite_index=spr_yaysuu_talk_mad
				break;
				case 2:
				saydialogue("C-Copycat...?","red","???",spr_dialoguebox_yoknovist)
				sprite_index=spr_yaysuu_idle
				break;
				case 3:
				saydialogue("What, you thought aping my moves with a small delay would stop ME?","white","YAYSUU")
				sprite_index=spr_yaysuu_talk_confused
				break;
				case 4:
				saydialogue("I had you pegged as an old dog who couldn't learn new tricks, but boy...","white","YAYSUU")
				sprite_index=spr_yaysuu_talk_mad
				break;
				case 5:
				saydialogue("You've gotten SLOPPIER with age.","white","YAYSUU")
				sprite_index=spr_yaysuu_talk_surprised
				break;
				case 6: 
				saydialogue("And just what is THAT supposed to mean?","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle
				sprite_index=spr_yaysuu_idle
				break;
				case 7:
				saydialogue("Honestly, pal. I don't know why you've gone all this way.","white","YAYSUU")
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle_close
				sprite_index=spr_yaysuu_talk_confused
				break;
				case 8:
				saydialogue("Taking me to a 'shard' of a world I left behind long ago.","white","YAYSUU")
				sprite_index=spr_yaysuu_talk_surprised
				break;
				case 9:
				saydialogue("Chasing me through an indiscriminate, monochrome wasteland.","white","YAYSUU")
				sprite_index=spr_yaysuu_talk_mad
				break;
				case 10:
				saydialogue("Is that your idea of an encore? A pity party?","white","YAYSUU")
				sprite_index=spr_yaysuu_talk_relax
				break;
				case 11:
				saydialogue("You...","red","???",spr_dialoguebox_yoknovist)
				sprite_index=spr_yaysuu_idle
				break;
				case 12:
				saydialogue("YOU...","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle
				break;
				case 13:
				saydialogue("Ooh boy. Here comes the fireworks.","white","YAYSUU")
				sprite_index=spr_yaysuu_talk_mad
				break;
				case 14:
				with instance_create_depth(x,y,obj_yoknovist_cutscene.depth+1,obj_yoknovistmessage)
				{
					text="ENOUGH"
					voiceline=snd_enough
				}
				sprite_index=spr_yaysuu_idle
				break;
				case 15:
				saydialogue("I brought you and your FRIENDS here so I could TOY with you.","red","???",spr_dialoguebox_yoknovist)
				image_alpha=1
				break;
				case 16:
				saydialogue("But even THEN, I gave you a FIGHTING CHANCE in our little game.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 17:
				saydialogue("I wanted us to PLAY like old times, not dragged down by the little details.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 18:
				saydialogue("I just wanted to feel something again. Even for one last time.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 19:
				saydialogue("But `sYOU...","red","???",spr_dialoguebox_yoknovist)
				break;
				case 20:
				saydialogue("You've truly reminded me why I wanted you `sDEAD.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 21:
				saydialogue("`sYOU BROUGHT ME INTO THIS WORLD, THROUGH A POORLY WRITTEN BACKSTORY AND AN IMPERFECT APPEARANCE.","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_angry
				break;
				case 22:
				saydialogue("`sAND THEN I KILLED YOU.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 23:
				saydialogue("`sBUT THAT WASN'T ENOUGH FOR THE STAR OF THE SHOW. YOU HAD TO COME BACK.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 24:
				saydialogue("`sAND LEAVE ME TO ROT IN THE SIDELINES, WATCHING THE UNIVERSE RESET AGAIN, AND AGAIN.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 25:
				saydialogue("`sUNTIL ALL THAT WAS LEFT, WAS A FRACTURED MESS OF A STORY NEVER TO BE CONTINUED.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 26:
				saydialogue("`sAND YOU WANT TO KNOW THE WORST PART? I HAD TO WORK THROUGH ACTUALLY FORMING AN IDENTITY OF MY OWN.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 27:
				saydialogue("`sYOU HAD IT ALL FIGURED OUT FROM THE START.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 28:
				saydialogue("`sSO YOU KNOW WHAT?","red","???",spr_dialoguebox_yoknovist)
				break;
				case 29:
				saydialogue("`sI'M GOING TO KILL YOU.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 30:
				saydialogue("`sAGAIN, AND AGAIN, AND AGAIN, AND AGAIN.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 31:
				saydialogue("`sUNTIL THIS WORLD, FINALLY COLLAPSES INTO THE BLANK CANVAS FROM WHENCE IT CAME...","red","???",spr_dialoguebox_yoknovist)
				break;
				case 32:
				audio_stop_sound(mus_welcome)
				saydialogue("With you and me, etched into it's tomb forevermore.","red","",spr_fadeblack)
				break;
				case 33:
				talking=false
				talked=true
				break;
			}
			break;
			case "T":
			switch dialogueprogress
			{
				case 1:
				saydialogue("Alright, that's enough. Get outta my way!","white","TEDDY")
				sprite_index=spr_teddy_talk_assertive
				break;
				case 2:
				saydialogue("Persistent, are we...?","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_laugh
				sprite_index=spr_teddy_idle
				audio_play_sound(snd_ufufu,0,false,global.sndvol*4)
				break;
				case 3:
				saydialogue("You're more annoying than I THOUGHT.","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle_close
				break;
				case 4:
				saydialogue("Heh. The feeling's mutual.","white","TEDDY")
				sprite_index=spr_teddy_talk_unamused
				break;
				case 5:
				saydialogue("Of course, you know this IS the end of the line.","red","???",spr_dialoguebox_yoknovist)
				sprite_index=spr_teddy_idle
				break;
				case 6: 
				saydialogue("So, are you ready to DIE, or are you gonna make this difficult?","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle
				break;
				case 7:
				saydialogue("I've had ENOUGH of your cryptic yammering!","white","TEDDY")
				sprite_index=spr_teddy_talk_assertive
				break;
				case 8:
				saydialogue("If you want me dead so bad, come and get me!","white","TEDDY")
				break;
				case 9:
				saydialogue("Just do me one favor, Mr. Theatrics.","white","TEDDY")
				sprite_index=spr_teddy_talk_unamused
				break;
				case 10:
				saydialogue("When I absolutely crush you and prove you're nothing but a fraud...","white","TEDDY")
				sprite_index=spr_teddy_talk_assertive
				break;
				case 11:
				saydialogue("You're gonna put everything BACK where it was, and NEVER COME AROUND HERE AGAIN!","white","TEDDY")
				break;
				case 12:
				saydialogue("Ufufufu...","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_laugh
				sprite_index=spr_teddy_idle
				audio_play_sound(snd_ufufu,0,false,global.sndvol*4)
				break;
				case 13:
				saydialogue("You brave little moron.","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle
				break;
				case 14:
				saydialogue("I see a lot of myself in you.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 15:
				saydialogue("This heroic act, all for the spotlight...","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle_close
				break;
				case 16:
				saydialogue("I'm going to savor every moment I tear you to shreds...","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle
				break;
				case 17:
				audio_stop_sound(mus_welcome)
				saydialogue("When I do it over, and over, and over again.","red","",spr_fadeblack)
				break;
				case 18:
				talking=false
				talked=true
				break;
			}
			break;
			case "C":
			switch dialogueprogress
			{
				case 1:
				saydialogue("Well well. You've exceeded my expectations.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 2:
				saydialogue("It would be a bit vain of me to say I expected nothing less from the favorite.","red","???",spr_dialoguebox_yoknovist)
				break;
				case 3:
				saydialogue("But this is where it ends, isn't it?","red","???",spr_dialoguebox_yoknovist)
				break;
				case 4:
				saydialogue("You want to end this once and for all, just as I do.","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle
				break;
				case 5:
				saydialogue("I hope you weren't expecting me to go EASY on you...","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle_close
				break;
				case 6: 
				saydialogue("Ufufufu... Just remember to smile...","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_laugh
				audio_play_sound(snd_ufufu,0,false,global.sndvol*4)
				break;
				case 7:
				audio_stop_sound(mus_welcome)
				saydialogue("I'll make sure it's permanent.","red","",spr_fadeblack)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle_close
				break;
				case 8:
				talking=false
				talked=true
				break;
			}
			break;
			case "E":
			switch dialogueprogress
			{
				case 1:
				saydialogue("H- ...How did you get HERE?!","red","???",spr_dialoguebox_yoknovist)
				break;
				case 2:
				saydialogue("After all of that, you...","red","???",spr_dialoguebox_yoknovist)
				break;
				case 3:
				saydialogue("...","red","???",spr_dialoguebox_yoknovist)
				break;
				case 4:
				saydialogue("No, those SPRINGS...","red","???",spr_dialoguebox_yoknovist)
				break;
				case 5:
				saydialogue("Who put those SPRINGS THERE?","red","???",spr_dialoguebox_yoknovist)
				break;
				case 6: 
				saydialogue("You... You didn't...!!","red","???",spr_dialoguebox_yoknovist)
				break;
				case 7:
				audio_stop_sound(mus_welcome)
				saydialogue("Stop Talking.","white","YAETCEE")
				break;
				case 8:
				saydialogue("What?","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle
				break;
				case 9:
				global.currentsong=mus_chillfields_hub
				audio_play_sound(global.currentsong,1,true,global.musvol)
				saydialogue("Ever Since I Was Born, I've Been Nothing But A Joke To Everyone","white","YAETCEE")
				break;
				case 10:
				saydialogue("Even My Friends","white","YAETCEE")
				break;
				case 11:
				saydialogue("I Can't Help It That The Only Thing I Know How To Do Is Jump","white","YAETCEE")
				break;
				case 12:
				saydialogue("I Wanted To Fly","white","YAETCEE")
				break;
				case 13:
				saydialogue("`cgShe...","white","YAETCEE")
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_idle_close
				break;
				case 14:
				saydialogue("`cgShe `clWas The Only One To Lift Me Up In Her Arms","white","YAETCEE")
				break;
				case 15:
				saydialogue("And You Took Me From Her","white","YAETCEE")
				break;
				case 16:
				saydialogue("You Took Her From Me","white","YAETCEE")
				break;
				case 17:
				saydialogue("I'm Not Trying To Prove Anything To Anyone","white","YAETCEE")
				break;
				case 18:
				saydialogue("But `crYou `clJust Unleash Your Wrath Out On The Weak Like An Impetulant Brat","white","YAETCEE")
				break;
				case 19:
				saydialogue("You Are The Worst Kind Of Person","white","YAETCEE")
				break;
				case 20:
				saydialogue("The Worst Kind Of Copycat","white","YAETCEE")
				break;
				case 21:
				saydialogue("You Took The Worst Aspects Of My Idol","white","YAETCEE")
				break;
				case 22:
				saydialogue("And Now You Want To Torture Me In Perpetuity","white","YAETCEE")
				break;
				case 23:
				saydialogue("I'm Not Going To Sit Around And Take It Anymore","white","YAETCEE")
				break;
				case 24:
				audio_stop_sound(mus_chillfields_hub)
				global.currentsong=mus_welcome
				audio_play_sound(global.currentsong,1,true,global.musvol)
				saydialogue("Y-You...","red","???",spr_dialoguebox_yoknovist)
				break;
				case 25:
				saydialogue("You...","red","???",spr_dialoguebox_yoknovist)
				break;
				case 26:
				saydialogue("UFUFUFUFU....","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_laugh
				audio_play_sound(snd_ufufu,0,false,global.sndvol*4)
				break;
				case 27:
				saydialogue("`sYOU...","red","???",spr_dialoguebox_yoknovist)
				obj_yoknovist_cutscene.sprite_index=spr_yoknovist_angry
				break;
				case 28:
				audio_stop_sound(mus_welcome)
				saydialogue("`sI'LL END YOUR MISERABLE EXISTENCE RIGHT NOW!!!!","red","",spr_fadeblack)
				break;
				case 29:
				talking=false
				talked=true
				break;
			}
			break;
			default:
			switch dialogueprogress
			{
				case 1:
				saydialogue("Test cutscene. Doodoo fart,","red","???",spr_dialoguebox_yoknovist)
				break;
				case 2:
				talking=false
				talked=true
				break;
			}
		}
	}
}
if talked
{
	instance_destroy()
	audio_stop_sound(mus_welcome)
	sprite_index=spr_yoknovist_idle
	global.currentsong=mus_boss_pt2
	audio_play_sound(global.currentsong,1,true,global.musvol*2)
	event_perform(ev_alarm,1)
}