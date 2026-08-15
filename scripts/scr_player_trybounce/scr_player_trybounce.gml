// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_trybounce(yepdashboing, smol = false){
	var dashbounced = (state == playerstates.dash && !grounded)
	if (((state == playerstates.stomp || (state == playerstates.bounce && char == "C") || dashbounced) || yepdashboing) && newstate == state) // bees.
	{
		if (dashbounced)
			invulsafety = 15
		event_user(dashbounced || smol) //true = smaller bounce
	}
}
