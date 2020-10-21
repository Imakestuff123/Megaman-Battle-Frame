/// @description Insert description here
// You can write your code in this editor

/*
var current = instance_place(x, y, obj_bullet);
if (instance_exists(current)) {
	
	if (current.player == player) {
		
	} else {
		with (current) {
			direction += irandom_range(135, 225);
			speed = 10;
			image_angle = direction;
			audio_play_sound(sound_ricochet, 1, false);
			//instance_destroy();
		}
		
	}
}
