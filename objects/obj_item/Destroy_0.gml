/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "Effects", obj_minideath);
if (instance_exists(player)) {
	player.currentitem = 0;
}