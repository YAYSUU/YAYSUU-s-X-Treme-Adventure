// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saydialogue(txt="",txtcolor="white",txtname="",sound=snd_dialogue_default,playsingle=false,txtnobox=false,txtsprite=-1,txtsubimg=0)
{
	with instance_create_depth(0,0,depth,obj_dialoguebox)
	{
		text=txt
		color=txtcolor
		sprite=txtsprite
		subimg=txtsubimg
		dialoguesound=sound
		playaudiosingle=playsingle
		name=txtname
		nobox=txtnobox
	}
}
