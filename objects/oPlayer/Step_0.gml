key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

var move = key_right - key_left;

hsp = move * move_speed;
vsp += grv;

if (place_meeting(x, y + 1, oWall) && key_jump) {
	vsp = jump_height;
	audio_play_sound(sndJump, 1, false);
}


if (place_meeting(x + hsp, y, oWall)) {
	while(!place_meeting(x + sign(hsp), y, oWall)) {
		x += sign(hsp);
	}
    hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, oWall)) {
	while(!place_meeting(x, y + sign(vsp), oWall)) {
		y += sign(vsp);
	}
    vsp = 0;
}
y += vsp;

if (!place_meeting(x, y + 1, oWall)) {
    sprite_index = sPlayer_move;
	image_speed = 0;
	 if (sign(vsp) > 0) {
	     image_index = 1;
	 } else {
		 image_index = 0;
	 }
} else {
	image_speed = 1;
	if (hsp == 0) {
	    sprite_index = sPlayer;
	} else {
		sprite_index = sPlayer_move;
	}
}

if (hsp != 0) {
   image_xscale = sign(hsp);
}

if (!instance_exists(oCake)) {
	room_goto_next();
}

if (keyboard_check_pressed(ord("L"))) {
	lives += 1;
}

if (!instance_exists(oCake)) {
	room_goto_next();
}

if (keyboard_check_pressed(ord("Z"))){
	instance_create_layer(x + 10, y + 15, "Instances", oKnife);
}

if (y > 1000) { instance_destroy() }