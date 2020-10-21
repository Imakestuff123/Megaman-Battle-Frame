/// @description Insert description here
// You can write your code in this editor

var currenttouching = (instance_place(x, y, obj_skullshield));
if (currenttouching.player == id) {
	} else { 
		if (character == 10) && (flying == 1) {
			instance_create_layer(x, y, "Effects", obj_trebleescape);
			flying = 0;
		}
		if (invincibility == 0) {
			stuntimer = 0;
			currenttouching.hhealth -= 4;
			hhealth -= 2;
			specialtimer = 0;
			currentflash = instance_create_layer(x, y, "Effects", obj_flash);
			currentflash.image_speed = 3;
			currentflash.player = id;
			invincibility = 1;
			chargetimer = 0;

		}
	}
