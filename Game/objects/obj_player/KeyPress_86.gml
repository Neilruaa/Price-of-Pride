if (in_knockback)
{
	// In that case we exit/stop the event here, so the player can't move.
	exit;
}


// This checks if the current sprite is the fall sprite, meaning the player hasn't landed yet

// This checks if the player is on the ground, before changing the sprite to the walking sprite. This is
// done to ensure that the walking sprite does not active while the player is in mid-air.

sprite_index = __Attack;
var attack_range_x = 1000; // extend range horizontally
var attack_range_y = 10; // optional vertical range
var offset_y = -attack_range_y / 2;

global.atk_x1 = bbox_left  - attack_range_x;
global.atk_x2 = bbox_right + attack_range_x;
global.atk_y1 = bbox_top   - attack_range_y;
global.atk_y2 = bbox_bottom + attack_range_y;

var h = audio_play_sound(woosh, 1, false);
audio_sound_gain(h, 2, 0);
alarm[0] = 10;