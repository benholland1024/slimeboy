// Getting Slimeboy's reference 
var playerRef = instance_find(obj_player, 0);

// Finding the total distance between Basic Bot and Slime Boy 
// (The absolute value of the difference in x values plus that of the y values)
var totalDistance = abs(x - playerRef.x) + abs(y - playerRef.y);

// Direction towards Slime-o
dir = point_direction(x, y, playerRef.x, playerRef.y);

// set the hspd and vspd
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

if (shocked) {
	sprite_index = basicbot_shocked;
	shockedTimer--;
	if (shockedTimer <= 0) {
		instance_destroy();
		instance_create_depth(x,y,-1000,obj_win_screen);
	}
	return;
}


// This changes the sprite. Note that we do this even when we're inside the follow distance,
// to keep basic bot's eye on slimey!
if (hspd < 0) {
	sprite_index = basicbot_walk_left;
} else if (hspd > 0) {
	sprite_index = basicbot_walk_right;
}

// Handling being stuck:
if (stuck) {
	sprite_index = basic_bot_stuck;
//Handling moving, if we're far enough:
} else if (totalDistance > followDistance) {
	phy_position_x += hspd;
	phy_position_y += vspd;
} else {
	image_index = 0;
}

