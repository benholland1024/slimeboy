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

// This changes the sprite. Note that we do this even when we're inside the follow distance,
// to keep basic bot's eye on slimey!
if (hspd < 0) {
	sprite_index = basicbot_walk_left;
} else if (hspd > 0) {
	sprite_index = basicbot_walk_right;
}

// This only gets called if we're beyond our following distance
if (totalDistance > followDistance) {
	phy_position_x += hspd;
	phy_position_y += vspd;
} else {
	image_index = 0;
}