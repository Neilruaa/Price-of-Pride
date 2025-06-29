// This runs the parent's End Step event, which handles flipping the character's sprite left or right.
event_inherited();

// This is a switch statement that runs on the 'sprite_index' variable, which stores the sprite
// currently assigned to the instance.
// This allows us to transition to some other sprite, depending on the currently assigned sprite, and some additional conditions.
switch (sprite_index)
{
	// Code under this case runs if the assigned sprite is 'spr_player_walk', meaning the player is walking.
	case __Run:
		// Set the animation speed to 1, as it may have been set to 0 during the jump animation.
		image_speed = 1;
	
		// This checks if the X velocity is 0, meaning the player is not moving horizontally.
		if (vel_x == 0)
		{
			// In that case we change its sprite to the idle one.
			sprite_index = __Idle;
		}
	
		// This checks if the Y velocity of the player is greater than 1, meaning it is falling down.
		// This would happen when the player walks off a ledge.
		if (vel_y > 1)
		{
			// In that case we change its sprite to the fall one, and reset the frame to 0.
			sprite_index = __Fall;
			image_index = 0;
		}
		if (sprite_index == __Run) {
			if (!audio_is_playing(Footsteps__running)) {
				var h = audio_play_sound(Footsteps__running, 1, false);
				audio_sound_gain(h, 2, 0);}
		} else {audio_stop_sound(Footsteps__running)}
		break;

	// Code under this case runs if the assigned sprite is 'spr_player_jump', meaning the player was in the middle of a jump.
	case __Jump:
		// This checks if the Y velocity is equal to, or greater than 0, meaning the player has now started falling downward.
		if (vel_y >= 0)
		{
			// In that case we change its sprite to the fall sprite, and reset the frame to 0.
			sprite_index = __Fall;
			image_index = 0;
		
			// We also reset the animation speed to 1, as it was set to 0 at the end of the jump animation.
			image_speed = 1;
		}
		break;

	// Code under this case runs if the assigned sprite is 'spr_player_fall', meaning the player was falling downward.
	case __Fall:
		// This checks if the player is now on the ground
		if (grounded)
		{
			// In that case we change its sprite to the idle sprite.
			sprite_index = __Idle;
		
			// We also reset the animation speed to 1, as it was set to 0 at the end of the fall animation.
			image_speed = 1;
		
			// Play the landing sound effect

		}
		break;

	// Code under this case runs if the assigned sprite is 'spr_player_hurt', meaning the player is in the middle of a knockback.

	// 'default' code runs when none of the other cases are valid, meaning the currently assigned sprite is not covered by any
	// of the cases above.
	default:
		// For all other sprites we set the animation speed to 1.
		image_speed = 1;
		break;
}