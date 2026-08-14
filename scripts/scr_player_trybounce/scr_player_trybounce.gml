// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_trybounce(yepdashboing){
	if ((state == playerstates.stomp || (state == playerstates.bounce && char == "C") || (state == playerstates.dash && yepdashboing) || (state == playerstates.dash && !grounded)) && newstate == state) // STOP REMOVING THE MIDAIR BOUNCE!!!!
		event_user(0)
}