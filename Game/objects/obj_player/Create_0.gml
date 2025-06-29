// This runs the Create event of the parent, ensuring the player gets all variables from the character parent.
event_inherited();

// This variable tells whether the player is currently in knockback (from being hit by an enemy). It will be true if it is, and false if not.
in_knockback = false;

// This is the object that replaces the player once it is defeated.
defeated_object = obj_player_defeated;

hp = 5000;
max_hp = 5000;
global.invincibility = 0;

base_speed = 1.5;        
current_speed = base_speed; 
speed_decay_timer = 0;      
speed_decay_interval = room_speed *10; 
speed_decrement = 0.1;    
min_speed = 1; 
global.coin_count = 100;
coin_timer = 0;
coin_decrease_interval = room_speed * 2;