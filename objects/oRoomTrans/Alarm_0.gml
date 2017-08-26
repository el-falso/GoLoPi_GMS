/// @description Goto room based on state 

switch (global.rmState) {
	case rmMid_State.lost:
		room_goto(room2);
		break;
	case rmMid_State.won:
		room_goto(room0);
		break;
	default:
		break;
}
