/// @description Insert description here
// You can write your code in this editor

clone = instance_place(x, y, obj_clone); 
player = clone.parent
if (instance_exists(player)) {
	weaponrefilltimer = 1;
	visible = false;
	x = 0;
	y = 0;
}