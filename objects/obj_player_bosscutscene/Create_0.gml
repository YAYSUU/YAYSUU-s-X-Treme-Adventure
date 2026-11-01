/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
cameraoffset=0
pancamera=false
walked=false
if global.trial || global.levelloadtype=loadtype.respawn // skip the walk
{
	x=160
	talked=true
}
else {
	x=-64
}
sprite_index=global.mainplayer.playersprites[playersprite.idle]
switch global.char
{
	case "Y":
	endialog=33
	break;
	case "T":
	endialog=18
	break;
	case "C":
	endialog=8
	break;
	default:
	endialog=2
	break;
}