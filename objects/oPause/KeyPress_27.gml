/// @description Insert description here
// You can write your code in this editor

// pause button functionality https://developer.amazon.com/blogs/appstore/post/35ad26c8-95df-4033-8a58-70276d1dbe8d/gamemaker-basics-pause-and-unpause
if(keyboard_check_pressed(vk_alt))
	{
    paused = !paused;
}

if(paused){
    instance_deactivate_all(1);
}else{
    instance_activate_all();
}