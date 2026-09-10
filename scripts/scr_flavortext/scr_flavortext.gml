// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function opt_flavortext(){
	switch chos
	{
		case 1:
		return "ADJUST VOLUME OF GAME ELEMENTS ACCORDINGLY"
		case 2:
		return "CONFIGURE KEYBINDINGS AND OTHER CONTROL OPTIONS"
		case 3:
		if global.mobile
			return "THIS OPTION CANNOT BE CONFIGURED"
		else
			return "TOGGLE BETWEEN FULL SCREEN AND WINDOW"
		case 4:
		return "SET SIZE OF GAME WINDOW IN INTEGER MULTIPLIERS"
		case 5:
		return "TOGGLE SCREENSHAKE FOR IMPACT. DISABLE IF PHOTOSENSITIVE"
		case 6:
		return "ENABLE OR DISABLE DYNAMIC WIDESCREEN BORDER ART IN FULL SCREEN"
		case 7:
		return "PRECISE TIMER FEATURES A FRAME COUNTER FOR SPEEDRUNS AND TIME TRIALS"
		case 8:
		return "EVERYTHING YOU EVER DID WILL BE DELETED"
		case 9:
		return "REVERT ALL OPTIONS TO DEFAULT"
		case 10:
		return "EXPERIMENT WITH CONTROLS USING YAYSUU AND TEDDY"
		case 11:
		return "SAVE ALL CHANGED OPTIONS AND RETURN TO GAME"
	}
}
function ext_flavortext(){
	switch chos
	{
		case 1:
		return "See the 'geniuses' who made this game."
		case 2:
		return "You get to listen to cool music!"
		case 3:
		return "Enter in cheats that do wacky stuff!"
		case 4:
		if extrasunlock
			return "Play additional stages outside of the story!"
		else
			return "Beat `cfSTORY MODE `clfirst to unlock this."
		case 5:
		return "View achievements you've unlocked so far."
		case 6:
		return "View concept art, and fanart for the game."
		case 7:
		return "Join the Jasper's Furry Jamboree discord, and meet likeminded fans!"
		case 8:
		return "Quit back to the Main Menu."
	}
}