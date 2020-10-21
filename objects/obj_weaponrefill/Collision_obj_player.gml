/// @description Insert description here
// You can write your code in this editor

player = instance_place(x, y, obj_player); 
if (instance_exists(player)) {
	weaponrefilltimer = 1;
	visible = false;
	x = 0;
	y = 0;
}
