if (room = rm_Intro and keyboard_check_pressed(vk_space)) {
	room_goto(Level1);
}

if (room = rm_lose and keyboard_check_pressed(vk_space)) {
	room_goto(rm_Intro);
}