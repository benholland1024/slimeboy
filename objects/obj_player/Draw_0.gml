/// @description Insert description here
// You can write your code in this editor
var pc;
pc = (health / max_health) * 100;
draw_healthbar(x - 30, y - 50, x - 20, y, pc, c_black, c_red, c_green, 3, true, false);
draw_self();