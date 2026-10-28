/// @description initial variables
// You can write your code in this editor
hsp = 0;
vsp = 0;
grv = 0.3;
wsp = 4;
dsh = 0;
hpush = 0;
jmp = -7;
jmps = 0
stmpd = false;
hurtd = false;
dieded = false;
vulnerable = true;
hurtt = 0;
winning = false;
followingqueue=ds_queue_create()
yearnedx=x
yearnedy=y
image_alpha=0
active=false
if global.fuckoffnovist
	instance_destroy()
sprite_index=global.mainplayer.playersprites[playersprite.idle]


