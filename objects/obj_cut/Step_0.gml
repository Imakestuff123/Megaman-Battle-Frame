/// @description Insert description here
// You can write your code in this editor
if !(instance_exists(player)) {
	instance_destroy();
	audio_stop_sound(sound_cut);
}
if !(audio_is_playing(sound_cut)) {
	audio_play_sound(sound_cut, 1, false);
}
image_angle += 15;
timer--;
timer1--;

if (timer <= 0) {
	if (instance_exists(player)) {
		direction = point_direction(x, y, player.x, player.y);
	}
}

if (room == menu) && (place_meeting(x, y, obj_wall)) {
	direction += 180;
}