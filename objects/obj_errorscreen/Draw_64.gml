/// @description Insert description here
// You can write your code in this editor
if !fakeout
	draw_text_yxa(16,16,"A critical error has occurred.\n\nPlease restart the game. If this problem persists, please refer to\n\nError ID: 41808\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nCopyright `cgFishcat Studio `cl2026","white",false)
else if fakeout
{
	draw_set_halign(fa_left)
	switch msg
	{
		case 0:
		draw_text_yxa(16,16,"Well well, look what the fishcat dragged in.","red",false)
		break;
		case 1:
		draw_text_yxa(16,16,"Here we are, graced with each other's presence once more.","red",false)
		break;
		case 2:
		draw_text_yxa(16,16,"...I won't be long. We'll save the monologues for later.","red",false)
		break;
		case 3:
		draw_text_yxa(16,16,"I just wanted to welcome you formally to MY world.","red",false)
		break;
		case 4:
		draw_text_yxa(16,16,"And to give you a forewarning...","red",false)
		break;
		case 5:
		draw_text_yxa(16,16,"Disclaimer \n\nThe following is the final chapter in a saga that has gone on for far too long. As such, the content within may not make sense if you have not been following along. Additionally, the content within may not be suitable for those who are easily disturbed. \nPlayer discretion is advised. \nSee you soon, "+environment_get_variable("USERNAME")+"...","white",false)
		break;
		default:
		draw_text_yxa(16,16,"OK, Something has actually gone wrong. You shouldn't be able to see this text. What a stupid joke game!!","red",false)
		break;
	}
	draw_set_halign(fa_right)
	if global.inputtype=0
	{
		draw_text_yxa(624,432,"Press "+keytostring(global.p1_jumpkey)+" to advance","white",true)
		draw_text_yxa(624,448,"Press "+keytostring(global.p1_runkey)+" to skip","white",true)
	}
	if global.inputtype=2
	{
		draw_text_yxa(624,432,"Press`d   to advance","white",true,,global.buttonsprite ? spr_playstationbuttons : spr_xboxbuttons,4)
		draw_text_yxa(624,448,"Press`d   to skip","white",true,,global.buttonsprite ? spr_playstationbuttons : spr_xboxbuttons,6)
	}
	if global.inputtype=3
	{
		draw_text_yxa(624,432,"Tap to advance","white",true)
		draw_text_yxa(624,448,"Tap back button to skip","white",true)
	}
}