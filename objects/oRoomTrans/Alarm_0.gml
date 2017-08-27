/// @description Goto room based on state 

switch (global.rmState) {
	case rmMid_State.lost:
		room_goto(rmMenu);
		break;
	case rmMid_State.won:
		room_goto(rmMain);
		break;
	default:
		break;
}
