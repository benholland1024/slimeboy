var playerRef = instance_find(obj_player, 0);

var totalDistance = abs(x - playerRef.x) + abs(y - playerRef.y);

dir = point_direction(x, y, playerRef.x, playerRef.y);

// set the hspd and vspd
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

if (totalDistance > followDistance) {
	phy_position_x += hspd;
	phy_position_y += vspd;
} else {
	image_index = 0;
}