/// @description Insert description here
// You can write your code in this editor
if (instance_exists(player)) {
	x = player.x;
	y = player.y;
} else {
	instance_destroy();
}

if (hhealth > 7) {
	sprite_index = spr_skullshield;
} else {
	if (hhealth > 4) {
		sprite_index = spr_skullshield1;
	} else {
		sprite_index = spr_skullshield2;
	}
}
if (hhealth <= 0) {
	instance_destroy();
}
timer--;
if (timer <= 0) {
	instance_destroy();
}

