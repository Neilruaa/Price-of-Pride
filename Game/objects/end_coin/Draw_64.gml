draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// Get the center of the screen
var center_x = display_get_gui_width() * 0.5;
var center_y = display_get_gui_height() * 0.5;

// Draw the title text
draw_text(center_x, center_y - 80, "Ton butin");

// Draw the coin icon and count below
draw_sprite(spr_coin, 0, center_x - 84, center_y);
draw_set_color(c_white);
draw_text(center_x + 40, center_y, "x " + string(global.coin_count));