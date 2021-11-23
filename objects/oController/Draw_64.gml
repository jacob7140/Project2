draw_set_colour(c_white)

for (i = 0; i < lives; i++) {
	draw_sprite(sLife, 0, (52 + 32 * i), 25);
}

draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))