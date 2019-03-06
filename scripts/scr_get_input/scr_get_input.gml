rightKey = keyboard_check(vk_right) or keyboard_check(ord("D"));
leftKey = keyboard_check(vk_left) or keyboard_check(ord("A"));
upKey = keyboard_check(vk_up) or keyboard_check(ord("W"));
downKey = keyboard_check(vk_down) or keyboard_check(ord("S"));

dashKey = keyboard_check(ord("K"));

slimeDropKey = keyboard_check(vk_space);

fullScreenKey = keyboard_check_pressed(ord("F"));

if (fullScreenKey) {
	if (window_get_fullscreen()) {
		window_set_fullscreen(false) ;
	} else {
		window_set_fullscreen(true);
	}
}