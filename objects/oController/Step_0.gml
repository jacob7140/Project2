if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

if (room = rm_Win) {
	instance_destroy();
}

if (lives <= 0) { 
	//global.game_over = true 
	room_goto(rm_lose);
	}