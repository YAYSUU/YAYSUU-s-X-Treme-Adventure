draw_set_font(global.subtitlefont)
draw_set_alpha(0.5)
draw_text(4, 4, "this menu doesnt work yet!")
draw_set_alpha(1)

draw_set_font(global.font)
draw_sprite(spr_menucursor, 0, 4, 24)
draw_text(36, 24, "SELECT EXISTING")
draw_text(36, 24+32, "MANAGE DEMOS")
draw_text(36, 24+(32*2), "RECORD TRIAL")
draw_text(36, 24+(32*3), "RECORD SPECIAL")

draw_set_alpha(0.5)
draw_text(36, 24+(32*5), "PREVIEW")
draw_set_alpha(1)

draw_text(36, 24+(32*7), "FUCK GO BACK")

draw_set_font(global.subtitlefont)
draw_text(4, 24+(32*8), "name for new demo:")