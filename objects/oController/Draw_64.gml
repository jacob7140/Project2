draw_set_colour(c_white)
image_speed = 0;
image_index = lives - 1;

if (lives > 5) {
	image_index = 4;
}

//raw_set_halign(fa_left)
//draw_text(500, 64, lives + "lives");