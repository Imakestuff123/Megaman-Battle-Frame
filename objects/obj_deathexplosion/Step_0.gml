/// @description Insert description here
// You can write your code in this editor
direction = number * 45;
if (number < 8) {
	speed = 2.5;
} else {
	speed = 4;
}

if ((x + sprite_width / 2) > room_width * 1.5) || ((x - sprite_width / 2) < -512) || ((y + sprite_height / 2) > room_height * 1.5) || ((y - sprite_height / 2) < -room_height) {
	instance_destroy();
}