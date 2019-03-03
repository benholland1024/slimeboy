/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player)) {
	sprite_index = button_pressed;
	var zapRef = instance_find(obj_shock_floor_off, 0);
	instance_create_depth(zapRef.x,zapRef.y,1,obj_shock_floor_on);
	// instance_destroy(zapRef)
}