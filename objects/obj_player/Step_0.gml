//step event
event_inherited();
script_execute(state)

if (place_meeting(x, y, obj_basicbot)) {
	health -= 5;
	if health <= 0 {
		instance_destroy();
	}
}