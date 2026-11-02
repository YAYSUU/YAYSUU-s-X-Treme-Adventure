/// @description health_system_hearts(sprite);
/// @param sprite
function boss_health_hearts(argument0) {

	//Hp can't go over max hp or below 0.
	hp = (clamp(global.bosshp,0,global.maxbosshp));

	var xoffset = 32;

	//Draw hearts background
	for (var i = 0; i < global.maxbosshp; i++) {
	    var col = i % 4;
	    var row = i div 4;
    
	    var xx = 416 + (xoffset * col);
	    var yy = 32 + (32 * row);
    
	    draw_sprite_ext(argument0, 1, xx, yy, 1, 1, 0, c_black, 1)
	}

	//Draw hearts
	for (var i = 0; i < global.bosshp; i++) {
	    var col = i % 4;
	    var row = i div 4;
    
	    var xx = 416 + (xoffset * col);
	    var yy = 32 + (32 * row);
    
	    draw_sprite(argument0, 1, xx, yy);
	}





}
