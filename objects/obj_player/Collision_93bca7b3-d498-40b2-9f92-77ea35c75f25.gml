/// @description Insert description here
// You can write your code in this editor

var shield = instance_place(x, y, obj_protoshield);

if (instance_exists(shield)) {
	if (shield.player.sprite_index == spr_protoshielddashright) && (shield.player != id) {
		if (character == 10) && (flying == 1) {
			instance_create_layer(x, y, "Effects", obj_trebleescape);
			flying = 0;
		}
		if (invincibility == 0) {
			specialtimer = 0;
			hhealth -= 3 * damagemultiplyer;
			currentflash = instance_create_layer(x, y, "Effects", obj_flash);
			currentflash.image_speed = 3;
			currentflash.player = id;
			invincibility = 1;
			chargetimer = 0;
		}
	}
}