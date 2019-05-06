/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sound_startlanding, 1, false);
if (sprite_index != spr_zerostart) {
	script_execute(scr_createplayer, player, character, x / 16, y / 16);
} else {
	script_execute(scr_createplayer, player, character, (x / 16), (y / 16) - (1 / 16));
}