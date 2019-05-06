/// @description Insert description here
// You can write your code in this editor

timer--;
if (timer > 0) {
	randomize();
	y -= random_range(0.1, 0.3);
	randomize();
	image_angle += random_range(0.1, 0.2);
}

if (timer <= 0) {
	randomize();
	y += random_range(0.1, 0.3);
	randomize();
	image_angle += random_range(0.1, 0.2);
}

if (timer <= 0) && (place_meeting(x, y , obj_wall)) {
	instance_destroy();
}