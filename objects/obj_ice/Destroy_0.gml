/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sound_chillmanspike, 1, false);

randomize();
if (sprite_index = spr_chillspikeup) {
	repeat (random(3)) {
		instance_create_layer(x, y - 2, "Effects", obj_iceparticles);
	}
}
if (sprite_index = spr_chillspikeleft) {
	repeat (random(3)) {
		instance_create_layer(x + 2, y, "Effects", obj_iceparticles);
	}
}
if (sprite_index = spr_chillspikeright) {
	repeat (random(3)) {
		instance_create_layer(x - 2, y, "Effects", obj_iceparticles);
	}
}