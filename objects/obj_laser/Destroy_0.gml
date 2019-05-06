/// @description Insert description here
// You can write your code in this editor
if (instance_exists(player)) {
	player.amountofbullets--;
}
if (type == 2) && !(place_meeting(x, y, obj_player)) && !(place_meeting(x, y, obj_item)) && !(place_meeting(x, y, obj_wall)) && !(place_meeting(x, y, obj_clone)) { 
	if (direction == 180) {
		clone = instance_create_layer(x + 5, y, "Instances", obj_clone);
	}
	if (direction == 0) {
		clone = instance_create_layer(x - 5, y, "Instances", obj_clone);
	}
	if (instance_exists(clone)) clone.parent = player;
	
}
