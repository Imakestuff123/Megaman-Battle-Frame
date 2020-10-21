function scr_cloneshoot(argument0, argument1) {
	//super = argument0;
	//bullettype = argument1;
	//playerid = argument2;
	//bulletdirection = argument3;

	shoottimer = 25;

	reloadtimer = 20;

	if (argument0 == 0) {
		currentbullet = instance_create_layer(x + 14, y, "Instances", obj_bullet);
	} 
	if (argument0 == 180) {
		currentbullet = instance_create_layer(x - 14, y, "Instances", obj_bullet);
	}

	with (currentbullet) {
		sprite_index = spr_bullet; 
		audio_play_sound(sound_shoot, 1, false);
		bulletstrength = 2;
		distance = 300;
		lasttimer = (distance / 150) * room_speed;
		sspeed = 3;
	
	}


	
	currentbullet.player = id;
	currentbullet.direction = argument0;
	currentbullet.bullettype = argument1;
	amountofbullets++;





}
