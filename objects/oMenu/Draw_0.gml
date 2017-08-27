/// @description Draw Menu
draw_set_font(fntMenu);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(room_width / 2, 100, "Lockpicking Dungeon");
for (i = 0; i < array_length_1d(menuItem); i++) {
	if (menuIndex == i) { draw_set_color(c_red) } else { draw_set_color(c_white) };
	draw_text(room_width / 2, 200 + i * 50, menuItem[i]);
}
