/// @description Insert description here
// You can write your code in this editor

if (image_index == 0) {
	image_speed = 0;
	y -= 5;
	if (bazinga != 1) {
		audio_play_sound(sound_riseup, 1, false);
		bazinga = 1;
	}
}