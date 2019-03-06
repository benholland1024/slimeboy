//handles dash state
len = spd*4

// get the vspd and the hspd
vspd = lengthdir_y(len, dir);
hspd = lengthdir_x(len, dir);

//move 
phy_position_x += hspd;
phy_position_y += vspd;

//create the instance object
var dash = instance_create_depth(x, y, 1, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;