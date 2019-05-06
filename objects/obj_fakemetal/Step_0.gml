/// @description Insert description here
// You can write your code in this editor


if (y != 96) {
	y += 2;
} else {
	sprite_index = spr_throwleft;
	timer--;
	if (timer == 180) {
		image_speed = 1;
	}
	if (timer == 176){
		image_speed = 0;
	}
	if (timer == 120) {
		object_set_sprite(1, spr_throwleft);
		image_speed = 1;
	}
	if (timer == 116) {
		image_speed = 0;
	}
	if (timer == 60) {
		object_set_sprite(0, spr_throwleft);
		image_speed = 1;
	}
	if (timer == 58) {
		image_speed = 0;
	}
	if (timer == 0) {
		
	}
}