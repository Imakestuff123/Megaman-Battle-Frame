/// @description Insert description here
// You can write your code in this editor
if (darktimer > 0) {
	if (darkness == 0) {
		darktimer--;
		if (darktimer == 0) {
			darkness = 1;
			hhealth = 10;
		}
	} else {
		darktimer--; 
		if (darktimer == 0) {
			darkness = 0;
			hhealth = 10;
		}
	}
}
if (darkness == 0) || ((darkness == 1) && (darktimer > 0)) layer_set_visible(waterfall, false);
if (darkness == 1) || ((darkness == 0) && (darktimer > 0)) layer_set_visible(waterfall, true);
if (itimer > 0) {
	if (image_speed == 0) {
		if (itimer mod 4 == 0) {
			image_index = 1;
		} else {
			image_index = 0;
		}
	}
	itimer--;
	if (itimer == 0) image_index = 0;
}

if (hhealth <= 3) {
	image_speed = 1;
} else {
	image_speed = 0;
}
if (place_meeting(x, y, obj_bullet)) && (itimer <= 0) && (darktimer <= 0){
	audio_play_sound(sound_enemydeath, 1, false);
	itimer = 20;
	hhealth --;
	var kms = instance_place(x, y, obj_bullet);
	if (instance_exists(kms)) {
		with (kms) {
			instance_create_layer(x, y, "Effects", obj_minideath);
			instance_destroy();
		}
	}
	if (hhealth == 0) {
		darktimer = 60;
	}
}
if ((place_meeting(x, y, obj_ring)) || (place_meeting(x, y, obj_saber)) || (place_meeting(x, y, obj_snake)) || (place_meeting(x, y, obj_laser)) || (place_meeting(x, y, obj_cut)) || (place_meeting(x, y, obj_cloud))) && (itimer <= 0) && (darktimer <= 0) {
	audio_play_sound(sound_enemydeath, 1, false);
	itimer = 20;
	hhealth --;
	if (hhealth == 0) {
		darktimer = 60;
	}
}