/// @func brokeLockpick(skillLockpicking)
/// @desc Compares Chances between Skill and breaking for Lockpick 
/// @arg {float} skillLockpicking Value of Lockpicking-Skill

skillLockpicking = argument0;

randomize();

breakChance = irandom_range(0, 100) / 100;

return breakChance > skillLockpicking;