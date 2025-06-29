if (is_dead) {
    if (!death_animation_finished) {
        image_speed = 1;
        if (image_index >= sprite_get_number(sprite_index) - 1) {
            image_index = sprite_get_number(sprite_index) - 1;
            image_speed = 0;
            death_animation_finished = true;
        }
    }
    exit;
}

player = obj_player
touch_range = 10


if (instance_exists(obj_player)){
    var dist = point_distance(x, y, player.x, player.y);

    // If close enough, trigger "touch" or any effect you want
    if (dist <= touch_range) {
		sprite_index = cultist_priest_attack_1
    } else {
		sprite_index = cultist_priest_walk_1
        // Move toward the player
        var dir = point_direction(x, y, player.x, player.y);
        x += lengthdir_x(speed_chase, dir);
        y += lengthdir_y(speed_chase, dir);
    }
}


