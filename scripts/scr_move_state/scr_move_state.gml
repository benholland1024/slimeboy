// move state

scr_get_input();

// get the axis of movement
var xaxis = (rightKey - leftKey);
var yaxis = (downKey - upKey);

//get the direction of movement
dir = point_direction(0, 0, xaxis, yaxis);

//get the length of movement
if ((xaxis == 0 and yaxis == 0) or health <= 0) {
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
if (len == 0 and health > 0) {
	image_index = 0;
}

// Handling death/invincibility
if (place_meeting(x, y, obj_shock_floor_on) and !invincible) {
	health--;
	invincible = true;
	invincibleTimer = invincibleTime;
	if health <= 0 {
		sprite_index = spr_player_normal_death;
		invincible = false;
		if (image_index > 25) {
			room_restart();
		}
	}
}

if (invincible) {
	invincibleTimer--;
	if (invincibleTimer <= 0) {
		invincible = false;
	}
	if (invincibleTimer % 6) {
		image_alpha = 0;
	} else {
		image_alpha = 1;
	}
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
if (slimeDropKey and slimeDropBuffer <= 0 and health > 0.2) {
	health -= 0.1;
	instance_create_depth(x,y,1,slime_drop);
	slimeDropBuffer = slimeDropFrequency;
} else {
	slimeDropBuffer--
}