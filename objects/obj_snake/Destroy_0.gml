/// @description Insert description here
// You can write your code in this editor

if (instance_exists(player)) {
	player.amountofbullets--;
}
instance_create_layer(x, y, "Effects", obj_minideath);