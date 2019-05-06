/// @description Insert description here
// You can write your code in this editor
var actualy = y - (sprite_height / 2);
if (phase == 0) {
	if !(place_meeting(x + ddirection, actualy - 2, obj_wall)) && !(place_meeting(x + ddirection, actualy - 2, obj_item)) && (actualy > starty - 150) {
		y -= 2;
		x += ddirection;
	} else {
		phase = 1;
	}
}

if (phase = 1) {
	if (timer > 0) {
		timer--;
		if (timer == 0) instance_destroy();
	}
	if (timer == -1) {
		timer = 120;
		for (i = 0; (!(place_meeting(x, y + (i * 8), obj_wall))) && !(y + (i * 8) > room_height); i++) {
			stoppoint = i;
		}
	}
	if (timer >= 120 - stoppoint) {
		var electricity = instance_create_layer(x, y + (8 * (120 - timer)), "Instances", obj_cloudelectricity);
		electricity.cloud = id;
		electricity.parent = parent;
		audio_play_sound(sound_thunderbeam, 1, false);
	}
}