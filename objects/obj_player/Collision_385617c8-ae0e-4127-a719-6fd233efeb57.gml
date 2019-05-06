/// @description Insert description here
// You can write your code in this editor

if (character == 10) && (flying == 0) {
	flying = 1;
	hsp = (hsp / 4) * 3;
	vsp = (vsp / 4) * 3;
	sliding = 0;
	audio_play_sound(sound_basscombine, 1, false);
}

/* no boost
hsp = 0;
vsp = 0;
*/