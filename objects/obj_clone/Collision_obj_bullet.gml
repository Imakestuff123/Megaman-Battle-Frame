/// @description Insert description here
// You can write your code in this editor

var current = instance_place(x, y, obj_bullet);

if (instance_exists(current)) {
	if (current.player != id) && (current.player != parent) {
		with (current) {
			instance_destroy();
		}
		instance_destroy();
	}
}