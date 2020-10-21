function scr_shoot(argument0, argument1, argument2, argument3) {
	//super = argument0;
	//bullettype = argument1;
	//playerid = argument2;
	//bulletdirection = argument3;

	shoottimer = 20;

	reloadtimer = reloadtime;
	if (argument1 == 1) || (argument1 == 7) || (argument1 == 9) || (argument1 == 10) || (argument1 == 12) || (argument1 == 15) || (argument1 == 16){
		if (argument3 == 0) {
			var currentbullet = instance_create_layer(x + 14, y, "Instances", obj_bullet);
		} 
		if (argument3 == 45) {
			var currentbullet = instance_create_layer(x + 15, y - 6, "Instances", obj_bullet);
		}
		if (argument3 == 135) {
			var currentbullet = instance_create_layer(x - 15, y - 6, "Instances", obj_bullet);
		}
		if (argument3 == 180) {
			var currentbullet = instance_create_layer(x - 14, y, "Instances", obj_bullet);
		}
		if (argument3 == 225) {
			var currentbullet = instance_create_layer(x - 14, y + 11, "Instances", obj_bullet);
		}
		if (argument3 == 315) {
			var currentbullet = instance_create_layer(x + 14, y + 11, "Instances", obj_bullet);
		}
	}
	if (argument1 == 2) {
		if (argument3 == 0) {
			var currentbullet = instance_create_layer(x + 14, y, "Instances", obj_bullet);
		} 
		if (argument3 == 180) {
			var currentbullet = instance_create_layer(x - 14, y, "Instances", obj_bullet);
		}
		if (argument3 == 315) {
			var currentbullet = instance_create_layer(x + 14, y, "Instances", obj_bullet);
		} 
		if (argument3 == 225) {
			var currentbullet = instance_create_layer(x - 14, y, "Instances", obj_bullet);
		}
	}
	if (argument1 == 3) {
		if (argument3 == 0) {
			if (argument0 == 2) {
				var currentbullet = instance_create_layer(x, y, "Instances", obj_bullet);
			} else {
				var currentbullet = instance_create_layer(x + 4, y + 4, "Instances", obj_bullet);
			}
		} 
		if (argument3 == 180) {
			if (argument0 == 2) {
				var currentbullet = instance_create_layer(x, y, "Instances", obj_bullet);
			} else {
				var currentbullet = instance_create_layer(x + 4, y + 4, "Instances", obj_bullet);
			}
		}
	}

	if (argument1 == 4) {
		if (argument3 == 0) {
			var currentbullet = instance_create_layer(x - 11, y - 3, "Instances", obj_bullet);
		} 
		if (argument3 == 180) {
			var currentbullet = instance_create_layer(x + 8, y - 11, "Instances", obj_bullet);
		}
	}
	if  (argument1 == 13) {
		if (argument3 == 0) {
			var currentbullet = instance_create_layer(x + 14, y, "Instances", obj_bullet);
		} 
		if (argument3 == 45) {
			var currentbullet = instance_create_layer(x + 15, y - 6, "Instances", obj_bullet);
		}
		if (argument3 == 135) {
			var currentbullet = instance_create_layer(x - 15, y - 6, "Instances", obj_bullet);
		}
		if (argument3 == 180) {
			var currentbullet = instance_create_layer(x - 14, y, "Instances", obj_bullet);
		}
		if (argument3 == 225) {
			var currentbullet = instance_create_layer(x - 5, y + 35, "Instances", obj_bullet);
		}
		if (argument3 == 270) {
			var currentbullet = instance_create_layer(x, y + 35, "Instances", obj_bullet);
		}
		if (argument3 == 315) {
			var currentbullet = instance_create_layer(x + 5, y + 35, "Instances", obj_bullet);
		}
	}

	if (argument1 == 14) {
		if (argument3 == 0) {
			var currentbullet = instance_create_layer(x + 12, y + 2, "Instances", obj_bullet);
		} 
		if (argument3 == 180) {
			var currentbullet = instance_create_layer(x - 12, y + 2, "Instances", obj_bullet);
		}
	}
	
	currentbullet.player = argument2;
	currentbullet.direction = argument3;
	currentbullet.super = argument0;
	currentbullet.bullettype = argument1;
	amountofbullets++;


	with (currentbullet) {
		if (super == 0) {
			switch (bullettype){
				case 1:
					sprite_index = spr_bullet; 
					audio_play_sound(sound_shoot, 1, false);
					bulletstrength = 2;
					distance = 300;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					other.currentammo--;
					break;
				case 2:
					sprite_index = spr_blade;
					audio_play_sound(sound_metal, 1, false);
					bulletstrength = 4;
					distance = 300;
					lasttimer = (distance / 150) * room_speed;
					speed = 5;
					other.currentammo -= 6;
					break;
			
				case 3:
					sprite_index = spr_protobullet;
					audio_play_sound(sound_shoot, 1, false);
					bulletstrength = 3;
					distance = 250;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 4.5;
					other.currentammo--;
					break;
				case 4:
					sprite_index = spr_quickbullet;
					bulletstrength = 2;
					randomize();
					distance = irandom_range(300, 450);
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					speed = 7;
					other.currentammo -= 2;
					break;
				case 7:
					sprite_index = spr_skullshot;
					audio_play_sound(sound_shoot2, 1, false);
					bulletstrength = 3.5;
					distance = 85;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					other.currentammo -= 3;
					break;
				case 9:
					sprite_index = spr_bullet; 
					audio_play_sound(sound_shoot, 1, false);
					bulletstrength = 3;
					distance = 300;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					other.currentammo--;
					break;
				case 10:
					image_angle = direction;
					sprite_index = spr_bullet; 
					audio_play_sound(sound_shoot, 1, false);
					bulletstrength = 2;
					distance = 350;
					lasttimer = (distance / 150) * room_speed;
					speed = 5;
					sspeed = 0;
					other.currentammo--;
					break;
				case 12:
					sprite_index = spr_bullet; 
					audio_play_sound(sound_shoot2, 1, false);
					bulletstrength = 2;
					distance = 300;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 3;
					other.currentammo--;
					break;
				case 13:
					sprite_index = spr_chillshot; 
					image_angle = direction;
					bulletstrength = 3;
					distance = 250;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 4;
					speed = 0;
					other.currentammo -= 3;
					break;
				case 14:
					sprite_index = spr_bullet; 
					audio_play_sound(sound_shoot, 1, false);
					bulletstrength = 2;
					distance = 300;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 4;
					other.currentammo--;
					break;
				case 15:
					sprite_index = spr_sparkshotsmall; 
					audio_play_sound(sound_shoot2, 1, false);
					bulletstrength = 0;
					distance = 300;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 4;
					other.currentammo--;
					break;
				case 16:
					sprite_index = spr_flame; 
					audio_play_sound(sound_flame, 1, false);
					image_angle = direction;
					bulletstrength = 3;
					distance = 500;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 3;
					other.currentammo -= 2;
					break;
			}
		}
		if (super == 1) {
			switch (bullettype){
				case 1:
					sprite_index = spr_supershot1; 
					image_speed = 1;
					audio_play_sound(sound_shoot, 1, false);
					bulletstrength = 3;
					distance = 400;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 3;
					other.currentammo -= 3;
					break;
			
				case 3:
					sprite_index = spr_protobullet;
					audio_play_sound(sound_shoot, 1, false);
					bulletstrength = 4;
					randomize();
					distance = irandom_range(75, 150);
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					other.currentammo--;
					break;
				case 7:
					sprite_index = spr_skullshot;
					image_xscale = 1.25;
					image_yscale = 1.25;
					audio_play_sound(sound_shoot2, 1, false);
					bulletstrength = 4;
					distance = 100;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 8;
					other.currentammo -= 8;
					break;
				case 13:
					sprite_index = spr_chillshot; 
					image_angle = direction;
					bulletstrength = 3;
					distance = 350;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					speed = 0;
					other.currentammo -= 6;
					break;
				case 14:
					sprite_index = spr_codashot; 
					image_angle = direction;
					bulletstrength = 4;
					distance = 350;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 7;
					speed = 0;
					audio_play_sound(sound_shoot2, 1, false);
					other.currentammo -= 5;
					break;
				case 15:
					image_xscale = 0.8;
					image_yscale = 0.8;
					sprite_index = spr_elecshot; 
					image_speed = 1;
					//image_angle = direction;
					bulletstrength = 4;
					distance = 350;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					speed = 0;
					audio_play_sound(sound_thunderbeam, 1, false);
					other.currentammo -= 6;
					break;
			
			}
		}
		
		if (super == 2) {
			switch (bullettype){
				case 1:
					if (direction == 0) {
						sprite_index = spr_supershot2right; 
					}
					if (direction == 180) {
						sprite_index = spr_supershot2left;
					}
					image_speed = 1;
					audio_play_sound(sound_chargeupshot, 1, false);
					bulletstrength = 5;
					distance = 800;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					other.currentammo -= 5;
					break;
			
				case 3:
					if (direction == 0) {
						sprite_index = spr_protosupershotright; 
					}
					if (direction == 180) {
						sprite_index = spr_protosupershotleft;
					}
					audio_play_sound(sound_chargeupshot, 1, false);
					image_speed = 1;
					bulletstrength = 6;
					distance = 650;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 6;
					other.currentammo -= 4;
					break;
				case 13:
					sprite_index = spr_chillshot; 
					image_angle = direction;
					bulletstrength = 8;
					distance = 1000;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 0;
					speed = 5;
					other.currentammo -= 0.5;
					break;
				case 14:
					sprite_index = spr_codashot1; 
					image_speed = 1;
					if (instance_exists(player.aimrecticle)) direction = point_direction(x, y, player.aimrecticle.tracking.x, player.aimrecticle.tracking.y);
					image_angle = direction;
					bulletstrength = 0;
					distance = 200;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 5;
					speed = 5;
					audio_play_sound(sound_shoot2, 1, false);
					other.currentammo -= 6;
					break;
				case 16:
					sprite_index = spr_bigflame; 
					audio_play_sound(sound_flame, 1, false);
					image_angle = direction;
					bulletstrength = 5;
					distance = 600;
					lasttimer = (distance / 150) * room_speed;
					sspeed = 4;
					other.currentammo -= 8;
					break;
				}
		}
	}


}
