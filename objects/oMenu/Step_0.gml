/// @description Menu code

menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menuIndex += menuMove;

if (menuIndex < 0) { menuIndex = array_length_1d(menuItem) - 1 }
if (menuIndex >= array_length_1d(menuItem)) { menuIndex = 0 }

if (menuMove != 0) { audio_play_sound(sndNoti, 10, false) }

if (keyboard_check_pressed(vk_enter)) {
	switch (menuIndex) {
		case 0:
			room_goto(rmMain);
			break;
		case 1:
			game_end();
			break;
		default:
		 break;
	}
}