// This checks if the player is currently in knockback, after being hit by an enemy.
if (in_knockback)
{
	// In that case we exit/stop the event here, so the player can't move.
	exit;
}

if (sprite_index == __Attack)
{ 
	// In that case we exit/stop the event here, so the player can't move.
	exit;
}


// Set the X velocity to move_speed.
// This makes the character move right.
vel_x = move_speed * current_speed;

// This checks if the current sprite is the fall sprite, meaning the player hasn't landed yet.
if (sprite_index == __Fall)
{
	// In that case we exit/stop the event here, so the sprite doesn't change.
	exit;
}

// This checks if the player is on the ground, before changing the sprite to the walking sprite. This is
// done to ensure that the walking sprite does not active while the player is in mid-air.
if (grounded){
	if (move_speed > 0) {
        // Player is grounded and moving
        sprite_index = __Run;
    } else{       // Player is grounded but not moving
        sprite_index = __Idle;
	}
}
