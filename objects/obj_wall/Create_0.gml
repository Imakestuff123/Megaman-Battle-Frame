/// @description Insert description here
// You can write your code in this editor

facing = 0;

stayx = x;
stayy = y;
timer = 240;
if (room == flashroom) {
	type = global.hazards;
} 
if (room == battleroom) {
	type = 0;
}
if (room == bubbleroom) {
	type = 0;
}
if (room == gutsroom) {
	type = 0;
}
if (room == shadowroom) {
	type = 0;
}
if (room == highwayroom) {
	type = 0;
}
if (room == menu) {
	type = 0;
	image_alpha = 0;
}
//type 0 = normal
//type 1 = ice
//type 2 = dissappearing
//type 3 = shoot throughable
//type 4 = gutsman platforms
distime = room_speed * 1;
staytime = room_speed * 2;

if (room == gutsroom) && (depth == 200) {
	currentframe = 0;
	type = 4;
	spritetimer = 0;
	sprite2timer = 0;
	sprite_index = spr_gutsplatform;
	sprite_index = -1;
	randomize();
	speed = random_range(1, 1.4);
	randomize();
	var i = irandom_range(0, 1);
	if (i == 0) {
		direction = 0;
		facing = speed;
	}
	if (i == 1) {
		direction = 180;
		facing = speed * -1;
	}
	draw = 0;
	mask_index = spr_gutsplatform;
}
if (room == bubbleroom) && (depth == 400) {
	type = 3;
}
if (room == elecroom) {
	if (depth == 300) {
		type = 2;
		sprite_index = spr_disblocks;
		image_speed = 0;
		if (global.hazards == 0) {
			distimer = staytime;
			visible = true;
		} else {
			randomize();
			var i = irandom_range(0, 1);
			if (i == 0) {
				distimer = staytime;
				visible = true;
			
			} else {
				distimer = distime;
				x = 0;
				y = 0;
				visible = false;
			}
		}
	} else {
		type = 0;
	}
}

if (room == battleroom) {
	image_speed = global.hazards;
	if (depth == 200) {
		sprite_index = spr_conveyerright;
		facing = global.hazards;
	}
	if (depth == 300) {
		sprite_index = spr_smallconveyerright;
		facing = global.hazards;
	}
}
if ((room == battleroom) || (room == flashroom) || (room == bubbleroom) || (room == gutsroom) || (room == elecroom) || (room == shadowroom) || (room == highwayroom)) && (sprite_index == spr_wall)  {
	image_alpha = 0;
}