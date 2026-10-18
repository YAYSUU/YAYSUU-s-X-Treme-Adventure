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
		draw_text_yxa(16,16,"It hasn't been long, has it?","red",false)
		break;
		case 3:
		draw_text_yxa(16,16,"...Even so, I've oddly been looking forward to this.","red",false)
		break;
		case 4:
		draw_text_yxa(16,16,"Well, I'll keep it brief. A fair forewarning before our final little game.","red",false)
		break;
		case 5:
		draw_text_yxa(16,16,"Disclaimer \n\nThe following is the final chapter in a saga that has gone on for far too long. As such, the content within may not make sense if you have not been following along. Additionally, the content within may not be suitable for those who are easily disturbed. \n\nThis program may make use of your `cyreal PC username `clat times, so it is recommended not to stream if it is something sensitive. \n\nBy continuing, you accept `creverything that will happen from now on.","white",false)
		break;
		case 6:
		draw_text_yxa(16,16,"See you soon, "+environment_get_variable("USERNAME")+"...","red",false)
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