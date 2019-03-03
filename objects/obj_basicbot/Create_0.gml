//initializes the bot!
event_inherited();

spd = 1;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
followDistance = 50;	// How far the creature will follow you
stuck = false;			// If the bot is stuck lol

state = basic_bot_ai1;