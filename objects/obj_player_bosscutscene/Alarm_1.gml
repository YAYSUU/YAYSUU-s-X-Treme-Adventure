/// @description Insert description here
// You can write your code in this editor
obj_player.image_angle = 0
obj_player.state = playerstates.normal
obj_player.newstate = playerstates.normal
obj_player.image_alpha = 1
obj_player.idletime = 0
obj_yoknovist_boss.state = electrobotstates.idle
obj_yoknovist_boss.image_alpha = 1
global.currentsong=mus_boss_pt2
audio_play_sound(global.currentsong,1,true,global.musvol*2)
instance_destroy(obj_yoknovist_cutscene)
instance_destroy()