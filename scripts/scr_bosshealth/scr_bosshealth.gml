/// @description health_system_hearts(sprite);
/// @param sprite
function boss_health_hearts(argument0) {

	//Hp can't go over max hp or below 0.
	hp = (clamp(global.bosshp,0,global.maxbosshp));

	var xoffset = 32;

	//Draw hearts background
	for (var i = 0; i< global.maxbosshp; i++) {
		if i<=2
		{
			draw_sprite_ext(argument0,1,448+(xoffset*i),32,1,1,0,c_black,1);
		}
		if i>2
		{
			draw_sprite_ext(argument0,1,448+(xoffset*i-96),64,1,1,0,c_black,1);
		}
	}

	//Draw hearts
	for (var i = 0; i< global.bosshp; i++) {
		if i<=2
		{
			draw_sprite(argument0,1,448+(xoffset*i),32);
		}
		if i>2
		{
			draw_sprite(argument0,1,448+(xoffset*i-96),64);
		}
	}





}
