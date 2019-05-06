/// @description Insert description here
// You can write your code in this editor

if (bullettype != 2) && (bullettype != 4) {
	if (direction == 0) {
		repeat (sspeed) {
			if !(place_meeting(x, y, obj_wall)) && (bullettype == 13){
				x++;
			}
			if (bullettype != 13) {
				x++;
			}
			if (place_meeting(x, y, obj_protoshield) || place_meeting(x - (sprite_width / 2), y, obj_protoshield) || place_meeting(x + (sprite_width / 2), y, obj_protoshield)) && (blocked == 0){
				blocked = 1;
				//var current = instance_place(x, y, obj_protoshield);
				//if (instance_exists(current)) {
					//if (current.player != player) {
				direction += irandom_range(135, 225);
				speed = 10;
				image_angle = direction;
				audio_play_sound(sound_ricochet, 1, false);	
					//}
				//}
			}
			if (place_meeting(x, y, obj_saber)) {		
				instance_create_layer(x, y, "Effects", obj_minideath);
				instance_destroy();
			}
		}
	
	}
	if (direction == 180) {
		repeat (sspeed) {
			if !(place_meeting(x, y, obj_wall)) && (bullettype == 13){
				x--;
			}
			if (bullettype != 13) {
				x--;
			}
			if (place_meeting(x, y, obj_protoshield) || place_meeting(x - (sprite_width / 2), y, obj_protoshield) || place_meeting(x + (sprite_width / 2), y, obj_protoshield)) && (blocked == 0){	
				blocked = 1;
				//var current = instance_place(x, y, obj_protoshield);
				//if (instance_exists(current)) {
					//if (current.player != player) {
				direction += irandom_range(135, 225);
				speed = 10;
				image_angle = direction;
				audio_play_sound(sound_ricochet, 1, false);	
					//}
				//}
			}
			if (place_meeting(x, y, obj_saber)) {		
				instance_create_layer(x, y, "Effects", obj_minideath);
				instance_destroy();
			}
		}
	}
	if (direction == 270) {
		repeat (sspeed) {
			if !(place_meeting(x, y, obj_wall)) && (bullettype == 13) {
				y++;	
			}
			if (bullettype != 13) {
				y++;
			}
		}
	}
}


if (bullettype == 2) {
	image_angle++;
}
quicktimer--;

if (bullettype == 4) && (quicktimer <= 0){
	if (instance_exists(obj_player)) {
		if (quicktimer1 <= 0) {
			nearestenemy = instance_nearest(x, y, obj_player);
			if (bazinga == 0) {
				randomize();
				direction = point_direction(x, y, nearestenemy.x, nearestenemy.y) + irandom_range(-5, 5);
				bazinga = 1;
			}
			image_angle = direction;
			sspeed = 8;
			if (nearestenemy == player) {
				speed = 10;
			} else {
				speed = 5;
			}
			if (instance_place(x, y, player)) {
			
				instance_destroy();
			}
	
		} else {
			sspeed = 0;
			speed = 0;
			image_angle += 10;
			quicktimer1--;
		}
	}
}

lasttimer--;

if (lasttimer <= 0) {
	
	instance_destroy();
}
if (bullettype != 4) {
	if ((sign(x - (sign(startx) * startx)) * (x - (sign(startx) * startx))) >= distance) {
		
		instance_destroy();
	}
}
if (bullettype == 13) && (super == 2) {
	if (place_meeting(x, y, obj_wall)) {
		instance_destroy();
		audio_play_sound(sound_chillmanspike, 1, false);
	}
}
if (bullettype == 13) && (super != 2){
	if (direction != 0) && (direction != 180) {
		speed = 5;
	}	
	/*
	if (place_meeting(x + speed, y, obj_wall)) {
		while(!place_meeting(x + 1, y, obj_wall))
		{
			x += 1;
		}
	}
	if (place_meeting(x - speed, y, obj_wall)) {
		while(!place_meeting(x - 1, y, obj_wall))
		{
			x -= 1;
		}
	}
	
	if (place_meeting(x, y + speed, obj_wall)) {
		while(!place_meeting(x, y + 1, obj_wall))
		{	
			y += 1;
		}
	}*/
	if (place_meeting(x, y - speed, obj_wall)) {
		while(!place_meeting(x, y - 1, obj_wall))
		{	
			y -= 1;
		}
	}
	
	if (place_meeting(x, y, obj_wall)) {
		if (room != menu) {
			var wall = instance_place(x, y, obj_wall);
			if (wall.type != 4) && (wall.type != 2) {
				audio_play_sound(sound_chillmanspike, 1, false);
				var ice = instance_create_layer(x, y, "Instances", obj_ice);
				if ((direction == 0) || (direction >= 330)) && ((direction <= 360)) {
					ice.sprite_index = spr_chillspikeleft;
				}	
				if ((direction < 330) && (direction >= 270)) || ((direction <= 270) && (direction >= 210)) && (place_meeting(x, y + 1, obj_wall)){
					ice.sprite_index = spr_chillspikeup;
				}
				if (direction < 210) && (direction >= 180)  {
					ice.sprite_index = spr_chillspikeright;
				}
				ice.player = player;
			}
			
		}
		instance_destroy();
	}
	/*if (place_meeting(x - 1, y, obj_wall)) {
		var ice = instance_create_layer(x, y, "Instances", obj_ice);
		ice.sprite_index = spr_chillspikeright;
		instance_destroy();
	}
	if (place_meeting(x, y + 1, obj_wall)) {
		var ice = instance_create_layer(x, y, "Instances", obj_ice);
		ice.sprite_index = spr_chillspikeup;
		instance_destroy();
	}
	if (place_meeting(x, y - 1, obj_wall)) {
		var ice = instance_create_layer(x, y, "Instances", obj_ice);
		ice.sprite_index = spr_chillspikedown;
		instance_destroy();
		
	}*/
}