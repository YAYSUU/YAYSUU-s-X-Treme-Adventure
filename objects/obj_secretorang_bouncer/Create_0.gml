// Inherit the parent event
event_inherited();
slowdown = 0.15
hitboxcolor = c_orange
grv = 0.5
hsp = sign(scr_closestplayer().x - x) * 6
vsp -= 6
audio_play_sound(snd_stompland, 1, false)