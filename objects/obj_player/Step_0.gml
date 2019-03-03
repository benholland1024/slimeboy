//step event
event_inherited();
script_execute(state)


if (health < 4 and healthRefillCounter <= 0) {
	health += 0.1;
	healthRefillCounter = healthRefillTime;
}
healthRefillCounter--;