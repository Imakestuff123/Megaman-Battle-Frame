/// @description Insert description here
// You can write your code in this editor

if (instance_exists(player)) {
var current = instance_place(x, y, obj_bullet);
if (current.player != player) {
hhealth -= current.bulletstrength;
if (instance_exists(current)) && (current.blocked == 0) {
	
	
		
		
		with (current) {
			randomize();
			blocked = 1;
			direction += irandom_range(135, 225);
			speed = 15;
			
			image_angle = direction;
			audio_play_sound(sound_ricochet, 1, false);
			//instance_destroy();
			}
		
		}
	}
}
