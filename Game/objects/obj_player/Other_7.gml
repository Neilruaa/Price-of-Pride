// This event runs when the current animation ends.
// This is a switch statement that runs on the 'sprite_index' variable, which stores the sprite
// currently assigned to the instance.
// This allows us to transition to some other sprite, depending on the currently assigned sprite.
switch (sprite_index)
{
	// Code under this case runs if the assigned sprite is 'spr_player_jump', meaning
	// the player was in the middle of a jump.
	case __Jump:
		// Since the animation has ended (which is why this event is running), we stop the animation
		// by setting its speed to 0
		image_speed = 0;
	
		// We also set the current frame to the last frame of the animation, which will remain visible
		image_index = image_number - 1;
		break;

	// Code under this case runs if the assigned sprite is 'spr_player_fall', meaning
	// the player was falling downward.
	case __Fall:
		// Since the animation has ended (which is why this event is running), we stop the animation
		// by setting its speed to 0
		image_speed = 0;
	
		// We also set the current frame to the last frame of the animation, which will remain visible
		image_index = image_number - 1;
		break;
}