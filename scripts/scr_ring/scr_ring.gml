
shoottimer = 20;
reloadtimer = 1;
if (argument0 == 0) {
	if !(place_meeting(x + 14, y, obj_wall)) {
		ringcreated = instance_create_layer(x + 14, y, "Instances", obj_ring);
		ringcreated.sprite_index = spr_ringdown;
	} else {
		ringcreated = 0;
	}
} 
if (argument0 == 45) {
	if !(place_meeting(x + 15, y - 6, obj_wall)) {
		ringcreated = instance_create_layer(x + 15, y - 6, "Instances", obj_ring);
		ringcreated.sprite_index = spr_ringright;
	} else {
		ringcreated = 0;
	}
}
if (argument0 == 135) {
	if !(place_meeting(x - 15, y - 6, obj_wall)) {
		ringcreated = instance_create_layer(x - 15, y - 6, "Instances", obj_ring);
		ringcreated.sprite_index = spr_ringleft;
	} else {
		ringcreated = 0;
	}
}
if (argument0 == 180) {
	if !(place_meeting(x - 14, y, obj_wall)) {
		ringcreated = instance_create_layer(x - 14, y, "Instances", obj_ring);
		ringcreated.sprite_index = spr_ringdown;
	} else {
		ringcreated = 0;
	}
}
if (argument0 == 225) {
	if !(place_meeting(x - 14, y + 11, obj_wall)) {
		ringcreated = instance_create_layer(x - 14, y + 11, "Instances", obj_ring);
		ringcreated.sprite_index = spr_ringright;
	} else {
		ringcreated = 0;
	}
}
if (argument0 == 315) {
	if !(place_meeting(x + 14, y + 11, obj_wall)) {
		ringcreated = instance_create_layer(x + 14, y + 11, "Instances", obj_ring);
		ringcreated.sprite_index = spr_ringleft;
	} else {
		ringcreated = 0;
	}
}

if (ringcreated != 0) {
	ringcreated.player = id;
	ringcreated.image_speed = 1;
	ringcreated.direction = argument0;
	ringcreated.thrown = 1;
	ringcreated.speed = 6;
	ring = 0;
}
