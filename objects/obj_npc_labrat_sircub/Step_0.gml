/// @description Insert description here
// You can write your code in this editor
var dist = scr_closestplayer().x-x
if (dist < 100)
	image_alpha = 0
else if (dist < 200)
	image_alpha = (dist-100)/100
else
	image_alpha = 1