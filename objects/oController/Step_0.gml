if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

if (room = rm_Title || room = rm_lose || room = rm_Win) {
	oController.visible = false;
} else {
	oController.visible = true;
}