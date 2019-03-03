// move state

scr_get_input();

// get the axis of movement
var xaxis = (rightKey - leftKey);
var yaxis = (downKey - upKey);

//get the direction of movement
dir = point_direction(0, 0, xaxis, yaxis);

//get the length of movement
if (xaxis == 0 and yaxis == 0) {
	len = 0;
} else { 
	len = spd;
}

// set the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//move the player
phy_position_x += hspd;
phy_position_y += vspd;

// Detecting what sprite animation to use
image_speed = 1;
if (len == 0) {
	image_index = 0;
}
// Vertical sprites
if (vspd > 0) {
	sprite_index = spr_player_down;
} else if (vspd < 0) {
	sprite_index = spr_player_back;
}

// Horizontal sprites
if (hspd < 0) {
	sprite_index = spr_player_left;
} else if (hspd > 0) {
	sprite_index = spr_player_right;
}

// Slime drops:
if (len != 0) {
	if (slimeDropBuffer >= slimeDropFrequency) {
		instance_create_depth(x,y,1,slime_drop);
		slimeDropBuffer = 0;
	} else {
		slimeDropBuffer++;
	}
}