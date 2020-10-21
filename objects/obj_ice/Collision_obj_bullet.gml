/// @description Insert description here
// You can write your code in this edito

bullet = instance_place(x, y, obj_bullet);

if (bullet.player != player) {
	instance_destroy();
}