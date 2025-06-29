function take_damage(dmg) {
    // Check if blocking
    if (block_active) {
        // Blocked attack - reduce damage and add screen shake
        dmg = dmg * 0.2; // Block reduces damage by 80%
        shake_x = random_range(-2, 2);
        shake_y = random_range(-2, 2);
        
        // Brief stun after blocking
        state = "stunned";
        state_timer = 15;
    }
    else {
        // Normal hit
        shake_x = random_range(-4, 4);
        shake_y = random_range(-4, 4);
        
        // Chance to start blocking after being hit
        if (block_cooldown <= 0 && random(1) < block_chance) {
            state = "block";
            state_timer = block_duration;
            block_active = true;
        }
        else {
            state = "stunned";
            state_timer = 30;
        }
    }
    
    // Apply damage
    hp -= dmg;
    flash_timer = 10; // Visual feedback
	
	if (hp <= 0) {
        hp = 0;
        is_dead = true;
        
        // Change to death sprite
        sprite_index = death_sprite;
        image_index = 0;
        image_speed = 1
        
        // Set state to dead
        state = "dead";
        
        // Disable collision (optional)
        // mask_index = -1; // Removes collision
        
        // Stop all active abilities
        punch_hitbox_active = false;
        block_active = false;
        
        // Optional: Play death sound
        // audio_play_sound(snd_enemy_death, 1, false);
    }
}

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

if (obj_player.sprite_index == __Attack){
	if (bbox_right > other.bbox_left && bbox_left < other.bbox_right)
    {
        take_damage(5)
        exit;
    }
}
