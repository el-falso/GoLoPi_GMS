/// @description Insert description here

draw_set_alpha(1);
draw_sprite_stretched(sprGuiMid, 0, 0, 0, room_width, 64);

draw_set_font(fntGame);
draw_set_halign(fa_left);
draw_text(10, 15, "Level: " + string(global.level + 1));
draw_text(10, 30, "Points: " + string(global.points));
draw_text(100, 15, "Lockpicks: " + string(global.amountLockpicks));
draw_text(100, 30, "Lockpicking-Skill: " + string(global.skillLockpicking));


draw_text(800, 15, "Dev:");
draw_text(800, 30, "key: " + string(keyboard_key));
 //draw_text(800, 160, "Code: " + codeStr);

