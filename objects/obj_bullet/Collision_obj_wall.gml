/// @description Insert description here
// You can write your code in this editor
wall = instance_place(x, y, obj_wall);
if (room == menu) instance_destroy();
if (bullettype == 14) && (super == 0) && (wall.type != 3) instance_destroy();

if (bullettype != 14) {
	if (bullettype != 6) && (wall.type != 3) && (bullettype != 13) {
		instance_destroy();
	}
}