// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collectcoins(amount){
	global.coins += amount
	if (global.coins < 0)
		global.coins = 0
	if (global.combo > 0)
		global.combometer += 10
	if (amount > 0)
	{
		audio_play_sound(snd_coin,1,false,global.sndvol)
	}
	if (global.coins >= global.coingoal)
	{
		global.coingoal += 100
	}
	if (global.coins >= global.healgoal)
	{
		global.healgoal += 50
		if (global.hp < global.maxhp)
		{
			global.hp++
			audio_play_sound(snd_heal,1,false,global.sndvol)
		}
	}
}