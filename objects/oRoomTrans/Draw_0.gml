/// @description Draw notifications

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
switch (global.rmState) {
	case rmMid_State.lost:
		draw_text(room_width / 2, room_height / 2, "You lost.");
		break;
	case rmMid_State.won:
		draw_text(room_width / 2, room_height / 2, "You did it!\nYou will be transfered to the next room now!");
		break;
	default:
		break;
}
