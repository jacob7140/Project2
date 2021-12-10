if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

if (room = rm_Win) {
	instance_destroy();
}

if (lives <= 0) { 
	//global.game_over = true 
	room_goto(rm_lose);
	instance_destroy();
	}
	

if (lives = 4)
checkHealthIndex = 1

if (lives = 3)
checkHealthIndex = 2


if (lives = 2)
checkHealthIndex = 3


if (lives = 1)
checkHealthIndex = 4

if (lives = 0)
checkHealthIndex = 5
