if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

if (room = rm_Title || room = rm_lose || room = rm_Win) {
	oController.visible = false;
} else {
	oController.visible = true;
}

if (keyboard_check_pressed(ord("L"))) {
	lives += 3
}

if (keyboard_check_pressed(ord("N"))) {
	room_goto_next();
}

if (keyboard_check_pressed(ord("Y"))) {
	room_restart();
}