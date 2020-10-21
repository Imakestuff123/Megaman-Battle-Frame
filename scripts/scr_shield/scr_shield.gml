function scr_shield() {



	if (skullshield == 0) {
		shield = instance_create_layer(x, y, "Effects", obj_skullshield);
	} else {
		shield.hhealth = 10;
		shield.timer = 300;
	}
	shield.player = id;
	currentammo -= 15;
	skullshield = 1;
	audio_play_sound(sound_skullshield, 1, false);


}
