/// @func calcLootSkill()
/// @desc Generates "Loot" for chests
/// @return array(lockpicks, skill)

arr = [];

randomize();
arr[0] = irandom_range(0,2)
arr[1] = irandom_range(0, 25) / 100;

return arr;