/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_text(100, 100, "Player:");
draw_text(100, 130, "Level: " + string(global.level + 1));
draw_text(100, 160, "Lockpicks: " + string(global.amountLockpicks));
draw_text(100, 190, "Lockpicking-Skill: " + string(global.skillLockpicking));

draw_text(800, 100, "Dev:");
draw_text(800, 130, "key: " + string(keyboard_key));
draw_text(800, 160, "Code: " + codeStr);