//initializes the player
event_inherited();

spd = 2;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;


slimeDropBuffer = 0;		// Tracks how long before next slime drop. Keep this initialized at 0
slimeDropFrequency = 30;	// Lower this to drop slimes more lol

scr_get_input();

state = scr_move_state;