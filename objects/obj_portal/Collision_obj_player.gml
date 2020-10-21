/// @description Insert description here
// You can write your code in this editor

var bazinga = instance_place(x, y, obj_player);
timer = 45;
with (bazinga) {
	with (marker) {
		selected = 0;
		if (player == 1) {
			obj_management.p1character = 0;
		}
		if (player == 2) {
			obj_management.p2character = 0;
		}
		current.image_speed = 0;
		current.image_index = 0;
		current = 0;
	}
	instance_destroy();
}
