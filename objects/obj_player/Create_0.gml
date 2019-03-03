//initializes the player
event_inherited();

spd = 2.5;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;

max_health = 4;
health = max_health;
healthRefillTime = 200;
healthRefillCounter = healthRefillTime;

invincibleTimer = 0;		// keep at 0
invincibleTime = 100;		// this changes how long you're invincible
invincible = false;

slimeDropBuffer = 0;		// Tracks how long before next slime drop. Keep this initialized at 0
slimeDropFrequency = 30;	// Lower this to drop slimes more lol

scr_get_input();

state = scr_move_state;