/// @description Insert description here
// You can write your code in this editor

var current = instance_place(x, y, obj_laser);
if (instance_exists(current)) {
	
	if (current.player == player) {
		
	} else {
		with (current) {
			if (alreadyreflected == 0) {
				randomize();
				var i = irandom_range(0, 2);
				if (i == 0) {
					direction += 135;
				}
				if (i == 1) {
					direction += 225;
				}
				if (i == 2) {
					direction += 180;
				}
				
				image_angle = direction;
				audio_play_sound(sound_ricochet, 1, false);
				alreadyreflected = 1;
			}
		}
		
	}
}