/// @description Insert description here
// You can write your code in this editor
if (thrown == 1) {
	thrown = 0;
	audio_play_sound(sound_ricochet, 1, false);
	speed = 0;
	sprite_index = spr_ringdown;
	image_speed = 0;
}