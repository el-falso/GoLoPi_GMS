/// @description Initialize variables

enum rmMid_State {
	def,
	lost,
	won
}

global.rmState = rmMid_State.def;
global.level = 0;
global.amountLockpicks = 10;
global.skillLockpicking = 0.1;

global.points = 0;

