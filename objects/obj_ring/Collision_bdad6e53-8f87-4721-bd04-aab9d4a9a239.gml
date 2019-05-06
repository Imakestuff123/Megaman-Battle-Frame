/// @description Insert description here
// You can write your code in this editor
currenttouching = (instance_place(x, y, obj_player));
if (thrown != 1) {
	
	if (currenttouching.id == player) {
		if (player.key_shoot == 1) && (player.ring != 1) {
			player.ring = 1;
			instance_destroy();
		}
	} else {
		if (currenttouching.key_shoot == 1) {
			instance_create_layer(x, y, "Effects", obj_minideath);
			instance_destroy();
		}
	}
} else {
	if (currenttouching.id != player) {
		with (currenttouching) {
			if (invincibility == 0) {
				hhealth -= 4 * damagemultiplyer;
				currentflash = instance_create_layer(x, y, "Effects", obj_flash);
				currentflash.image_speed = 3;
				currentflash.player = id;
				invincibility = 1;
				chargetimer = 0;
			}
		}
	}
}