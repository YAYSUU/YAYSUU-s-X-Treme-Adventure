// WHAT?! WHAT?! WHAT?!
// i'm ACTUALLY using the obj_teddy for something. Well. something for fortress fringlebert
// he follows you around like a pizza tower toppin (Literally. i copy pasted the code from sage for the most part)
// ideally somewhere around fortress fringlebert he should take over as the leader and then the other brother will be following
// kthxbai
//image_alpha = obj_player.image_alpha;
//var grounded = place_meeting(x,y+1,obj_playercollision) || place_meeting(x,y+1,obj_collision) || place_meeting(x,y+1,obj_semisolid_gothrough)
//if global.char="Y"
//{
//	if (obj_player.hsp != 0) {
//		if abs(obj_player.hsp)>obj_player.walkspeed
//		{
//			sprite_index=spr_teddy_run
//		}
//		else {
//			sprite_index=spr_teddy_walk
//		}
//	}
//	else {
//		if grounded
//		{
//			sprite_index=spr_teddy_idle
//		}
//		else {
//			sprite_index=spr_teddy_fall
//		}
//	}
//}
//else
//{
//	if (obj_player.hsp != 0) {
//		if abs(obj_player.hsp)>obj_player.walkspeed
//		{
//			sprite_index=spr_yaysuu_run
//		}
//		else {
//			sprite_index=spr_yaysuu_walk
//		}
//	}
//	else {
//		if grounded
//		{
//			sprite_index=spr_yaysuu_idle
//		}
//		else {
//			sprite_index=spr_yaysuu_fall
//		}
//	}
//}
if !active
{
	image_speed = 0
	if (global.hp == 0)
	{
		if (image_alpha>0)
			image_alpha-=(1/60)
	}
	else
	{
		if (image_alpha<1)
			image_alpha+=(1/60)
		else
			active=true
	}
}
else if active
{
	//depth = obj_player.depth+1;
	ds_queue_enqueue(followingqueue, obj_player.x);
	ds_queue_enqueue(followingqueue, obj_player.y);
	ds_queue_enqueue(followingqueue, obj_player.sprite_index);
	ds_queue_enqueue(followingqueue, obj_player.image_index);
	ds_queue_enqueue(followingqueue, obj_player.image_xscale);
	ds_queue_enqueue(followingqueue, obj_player.image_speed);
    
	if (ds_queue_size(followingqueue)) > 360
	{
	    x = ds_queue_dequeue(followingqueue)
	    y = ds_queue_dequeue(followingqueue)
		sprite_index= ds_queue_dequeue(followingqueue)
		image_index= ds_queue_dequeue(followingqueue)
		image_xscale= ds_queue_dequeue(followingqueue)
		image_speed= ds_queue_dequeue(followingqueue)
	}
	if touchingplayer(x, y)
	{
		if !(global.firstplayertouch.state=playerstates.hurt)
		{
			global.firstplayertouch.ouchies = true
			global.firstplayertouch.deathies = true
			if (global.secondplayertouch != noone)
			{
				global.secondplayertouch.ouchies = true
				global.secondplayertouch.deathies = true
			}
		}
	}
	if voicelinetimer>0
		voicelinetimer--
	if voicelinetimer=0
	{
		sayscarymessage(choose(0,1,2,3))
		voicelinetimer=floor(random_range(10*60,100*60))
	}
}