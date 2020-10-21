/// @description Insert description here
// You can write your code in this editor

var currenttouching = (instance_place(x, y, obj_bullet));
with (parent) {
	if (currenttouching.player == id) {
		} else { 
			if (character == 10) && (flying == 1) {
				instance_create_layer(x, y, "Effects", obj_trebleescape);
				flying = 0;
			}
			if ((currenttouching.bullettype == 15) && (currenttouching.super == 0)) || ((currenttouching.bullettype == 14) && (currenttouching.super == 2)) {
				if (stuntimer <= 0) && (invincibility == 0) {
					if (currenttouching.bullettype == 15) stuntimer = 60;
					if (currenttouching.bullettype == 14) stuntimer = 90;
					stuntype = 1;
				}
				with (currenttouching) {
					instance_destroy();
				}
			} else {
				if (invincibility == 0) {
					specialtimer = 0;
					stuntimer = 0;
					hhealth -= currenttouching.bulletstrength * damagemultiplyer;
					currentflash = instance_create_layer(x, y, "Effects", obj_flash);
					currentflash.image_speed = 3;
					currentflash.player = id;
					invincibility = 1;
					chargetimer = 0;
					with (currenttouching) {
						instance_destroy();
					}
				}
			}
		}
}