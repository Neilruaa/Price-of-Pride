event_inherited();

// Set the position of the default audio listener to the player's position, for positional audio
// with audio emitters (such as in obj_end_gate)
audio_listener_set_position(0, x, y, 0);

speed_decay_timer++;

if (speed_decay_timer >= speed_decay_interval) {
    speed_decay_timer = 0;

    // Reduce speed but don’t go below min_speed
    current_speed = max(current_speed - speed_decrement, min_speed);
}

coin_timer++;

if (coin_timer >= coin_decrease_interval) {
    coin_timer = 0;

    // Only decrease if there's at least 1 coin
    if (global.coin_count > 0) {
        global.coin_count -= 1;
    }
}