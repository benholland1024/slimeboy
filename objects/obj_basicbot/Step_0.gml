event_inherited();

if (place_meeting(x, y, slime_drop)) {
	stuck = true;
} else {
	stuck = false;
}
if (place_meeting(x, y, obj_shock_floor_on)) {
	shocked = true;
}


script_execute(state)