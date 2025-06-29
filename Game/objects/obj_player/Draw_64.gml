// HEALTH BAR
var bar_x = 20;
var bar_y = 20;
var bar_width = 200;
var bar_height = 20;

// Background
draw_set_color(c_black);
draw_rectangle(bar_x - 2, bar_y - 2, bar_x + bar_width + 2, bar_y + bar_height + 2, false);

// Fill
var health_percent = hp / max_hp;
draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + (bar_width * health_percent), bar_y + bar_height, false);

// Label
draw_set_color(c_white);
draw_text(bar_x, bar_y - 25, "              Vie");

// SPEED BAR (just below health bar)
var speed_y = bar_y + 40;
var speed_percent = (current_speed - min_speed) / (base_speed - min_speed);
draw_set_color(c_black);
draw_rectangle(bar_x - 2, speed_y - 2, bar_x + bar_width + 2, speed_y + bar_height + 2, false);

draw_set_color(c_blue);
draw_rectangle(bar_x, speed_y, bar_x + (bar_width * speed_percent), speed_y + bar_height, false);

// Label
draw_set_color(c_white);
draw_text(bar_x, speed_y - 18, "              Vitesse");


// COIN BAR
var coin_y = speed_y + 80;
var icon_size = 24;
var coin_text_x = bar_x + icon_size + 8;

// Draw the coin icon
draw_sprite(spr_coin, 0, bar_x, coin_y);

// Draw the coin count next to the icon
draw_set_color(c_white);
draw_text(coin_text_x, coin_y + 2, "x " + string(global.coin_count));