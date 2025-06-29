event_inherited();

// This sets the movement speed for this particular enemy.
move_speed = 6;

// This applies either move_speed or negative move_speed to the enemy's X velocity. This way the enemy will
// either move left or right (at random).
// This action is present in the enemy parent object as well, but we're running it again in this child object,
// as its move_speed value has changed.
vel_x = choose(-move_speed, -move_speed);

// Basic stats
hp = 100;
max_hp = 100;
damage = 15;
speed_normal = 8;
speed_chase = 8;

// State management
state = "idle"; // idle, chase, attack, block, stunned
state_timer = 0;
is_dead = false;

// Attack properties
attack_range = 48;
attack_cooldown = 0;
attack_duration = 30; // frames
punch_hitbox_active = false;
combo_count = 0; // For combo attacks
max_combo = 3;

// Block properties
block_active = false;
block_duration = 60; // frames
block_cooldown = 0;
block_chance = 0.4; // 30% chance to block when player attacks
anticipation_distance = 80;

// Detection
detection_range = 200; // Increased from 128
player_detected = false;
line_of_sight = true; // Can see player

// Movement
target_x = x;
target_y = y;
face_direction = 1;
move_timer = 0; // For movement patterns
circle_angle = 0; // For circling behavior
last_player_x = x;
last_player_y = y;

// Visual feedback
flash_timer = 0;
shake_x = 0;
shake_y = 0;

death_sprite = cultist_priest_die_1; // Your dead enemy sprite
death_animation_finished = false; 
