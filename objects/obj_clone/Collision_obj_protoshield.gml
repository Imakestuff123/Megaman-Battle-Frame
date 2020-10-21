/// @description Insert description here
// You can write your code in this editor

var shield = instance_place(x, y, obj_protoshield);

if (instance_exists(shield)) {
	if (shield.player.sprite_index == spr_protoshielddashright) instance_destroy();
}