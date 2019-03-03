event_inherited();

if (place_meeting(x, y, slime_drop)) {
	stuck = true;
} else {
	stuck = false;
}

script_execute(state)