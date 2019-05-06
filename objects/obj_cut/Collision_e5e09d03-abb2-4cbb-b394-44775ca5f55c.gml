/// @description Insert description here
// You can write your code in this editor

var current = instance_place(x, y, obj_player);

if (current.id == player) && (timer1 <= 0) {
	if (instance_exists(player)) {
		player.reloadtimer = 0;
		instance_destroy();
	}
}