	/// @description Insert description here
	// You can write your code in this editor
if (global.hazards == 1) {
	if ((sprite_index == spr_conveyerright) || (sprite_index == spr_conveyerleft)){
		image_alpha = 1;
		timer--;
		if (timer <= 0){
			var i = irandom_range(1, 2)
			if (i == 1) {
				facing = 1;
			}
			if (i == 2) {
				facing = - 1;
			}
			timer = 240;
		}
		image_speed = 0.75;
		if (facing == 1){
			sprite_index = spr_conveyerright;
		}
	
		if (facing == -1){
			sprite_index = spr_conveyerleft;
		}
	}

	if ((sprite_index == spr_smallconveyerright) || (sprite_index == spr_smallconveyerleft)){
		image_alpha = 1;
		timer--;
		if (timer <= 0){
			var i = irandom_range(1, 2)
			if (i == 1) {
				facing = 1;
			}
			if (i == 2) {
				facing = - 1;
			}
			timer = 240;
		}
		image_speed = 0.75;
		if (facing == 1){
			sprite_index = spr_smallconveyerright;
		}
	
		if (facing == -1){
			sprite_index = spr_smallconveyerleft;
		}
	}

	if (type == 2) {
		distimer--;
		if (x == stayx) && (y == stayy) {
			if (distimer == 60) {
				image_speed = 0;
			}
		}
		if (distimer <= 0) {
			if (x == 0) && (y == 0) {
				x = stayx;
				y = stayy;
				if (!place_meeting(x, y, obj_player)) && (!place_meeting(x, y, obj_snake)) && (!place_meeting(x, y, obj_ring)) {
					distimer = staytime;
					x = stayx;
					y = stayy;
					visible = true;
					if !(audio_is_playing(sound_disblock)) {
						audio_play_sound(sound_disblock, 1, false);
					}
					image_speed = 1;
				} else {
					x = 0;
					y = 0;
					distimer += 10;
				}
			}
			if (x == stayx) && (y == stayy) && (distimer <= 0) {
				distimer = distime;
				x = 0;
				y = 0;
				visible = false;
			
			}
		}	
	}
}
	if (type == 4) {
		if (global.hazards == 1) { 
			spritetimer--;
			sprite2timer--;
			if (spritetimer == 12) {
				currentframe = 1;
			}
			if (spritetimer == 8) {
				currentframe = 2;
			}
			if (sprite2timer == 12) {
				currentframe = 1;
			}
			if (sprite2timer == 8) {
				currentframe = 0;
			}
		}
			if (instance_exists(obj_player)) {
				currentplayer = instance_nearest(x, y - 9, obj_player);
				//if round(obj_player.y + (obj_player.sprite_height / 2) > y) {
				if (round(currentplayer.y + (currentplayer.sprite_height / 2) > y - 9)) && (currentframe == 0) {
					mask_index = -1; 
				} else {	
					mask_index = spr_gutsplatform;
				}
			}
			if (global.hazards == 1) {
				if (currentframe != 0) {
					mask_index = -1;
				}
				if (abs(instance_nearest(x, y, obj_platformdown).x - x) <= 1) && (instance_nearest(x, y, obj_platformdown).y == y) {
					if (spritetimer <= 0) {
						if (currentframe == 0) {
							spritetimer = 16;
						}
						if (currentframe == 1) {
							spritetimer = 12;
						}
						if (currentframe == 2) {
							spritetimer = 8;
						}
					}
				} else {
		
					if (sprite2timer <= 0) {
						if (currentframe == 2) {
							sprite2timer = 16;
						}
						if (currentframe == 1) {
							sprite2timer = 12;
						}
						if (currentframe == 0) {
							sprite2timer = 8;
						}
					}
				}
			}
		if (abs(instance_nearest(x, y, obj_changedirectionpoint).x - x) <= 1) && (instance_nearest(x, y, obj_changedirectionpoint).y == y) {
			direction += 180;
			if (direction == 0) {
				facing = speed;
			}
			if (direction == 180) {
				facing = speed * -1;
			}
		}	
	}
