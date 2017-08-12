/// @description Code Check

var pressedKey = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(vk_right))
var codeSolved = index >= ds_list_size(code) ? true : false;
var hasLockpicks = global.amountLockpicks > 0 ? true : false;


if (codeSolved == true) {
		global.level += 1;
	if (global.level < array_length_1d(codeSize)) {
		room_goto(room1);
	}
	else {
		room_goto(room2);
	}
}

if (hasLockpicks) {	
	switch (keyboard_key) {
		case vk_left:
			lastKey = 0;
			break;
		case vk_right:
			lastKey = 1;
			break;
		default:
			lastKey = -1;
			break;
	}

	if (pressedKey) {
		// pressed key matches code-index
		if (code[| index]) == lastKey {
			variable_instance_set(oText.id, "lockText", "That sounded good.");
			oText.showText = 1;
			audio_play_sound(right, 10, false);
			index++;
		}
		// pressed key doesn't match code-index
		else {
			if (brokeLockpick(global.skillLockpicking)) {
				global.amountLockpicks -=1;
				variable_instance_set(oText.id, "lockText", "The lockpick broke.");
				oText.showText = 1;
			}
			else {
				variable_instance_set(oText.id, "lockText", "Try again.");
				oText.showText = 1;
			}
			audio_play_sound(wrong, 10, false);
			index = 0;
		}
	}
}
else {
	room_goto(room2)
}