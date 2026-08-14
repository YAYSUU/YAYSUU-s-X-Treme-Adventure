function scr_layerobjects(){
	global.layeringdepth = layer_get_depth("game")
	scr_debugmessage("start layering at " + string(global.layeringdepth))
	//earlier objects are above later objects
	//stuff that should go infront of the player
	layerthese(obj_seecret)
	layerthese(obj_water)
	//moving stuff like characters
	layerthese(obj_player)
	layerthese(obj_devnote)
	layerthese(obj_text)
	layerthese(obj_boss)
	layerthese(obj_uncanny)
	layerthese(obj_ghostpusher)
	layerthese(obj_enemy)
	//level objects
	layerthese(obj_spike)
	layerthese(obj_spikeball)
	layerthese(obj_rubble)
	layerthese(obj_coin)
	//lvlobjs that affect movement
	layerthese(obj_movingplatform)
	layerthese(obj_dashpad)
	layerthese(obj_stop)
	layerthese(obj_go)
	layerthese(obj_spring)
	layerthese(obj_hintnew)
	//bigger lvlobjs
	layerthese(obj_hangglider)
	layerthese(obj_monitor)
	layerthese(obj_car)
	layerthese(obj_sometypeofflag)
	layerthese(obj_lever)
	layerthese(obj_superbutton)
	//backgroundish or tiley stuff
	layerthese(obj_npc_common)
	layerthese(obj_pianokey)
	layerthese(obj_ghosttrigger)
	layerthese(obj_backdoor)
	layerthese(obj_backsolid)
	layerthese(obj_backplate)
	layerthese(obj_wallsoap)
	layerthese(obj_conveyor)
	layerthese(obj_lava)
	scr_debugmessage("finish layering at " + string(global.layeringdepth))
	if (global.layeringdepth >= layer_get_depth("game") + 100) //just realized this can't happen anymore but keep it just incase
	{
		scr_debugmessage("✗✗✗ALOTTA LAYERING!!✗✗✗")
		scr_debugmessage("✗increase next layer's depth!✗")
	}
}
function layerthese(objecttype)
{
	if (instance_exists(objecttype))
	{
		with (objecttype)
			depth = global.layeringdepth
		global.layeringdepth++
	}
}