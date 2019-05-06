/// @description Insert description here
// You can write your code in this editor
if (instance_exists(player)) {
	if (timer > 0) timer--;
	if (timer <= 0) instance_destroy();
	if (timer < 19) && (timer >= 16) {
		image_index = 2;
		x = player.x + ((player.sprite_width / 2) + (5 * savedirection));
		y = player.y - (player.sprite_height / 2) - 2;
	}
	if (timer < 16) && (timer >= 13) {
		image_index = 2;
		x = player.x + ((player.sprite_width / 2) + (10 * savedirection));
		y = player.y
	}
	if (timer < 13) && (timer >= 10) {
		image_index = 1;
		x = player.x + ((player.sprite_width / 2) + (5 * savedirection));
		y = player.y + (player.sprite_height / 2) + 2;
	}
	if (timer < 10) && (timer >= 7) {
		image_index = 1;
		x = player.x + ((player.sprite_width / 2) + (5 * savedirection));
		y = player.y + (player.sprite_height / 2) + 2;
	}
	if (timer < 7) && (timer >= 4) {
		image_index = 2;
		x = player.x - ((player.sprite_width / 2) + (10 * savedirection));
		y = player.y
	}
	if (timer < 4) && (timer >= 1) {
		image_index = 2;
		x = player.x - ((player.sprite_width / 2) + (5 * savedirection));
		y = player.y - (player.sprite_height / 2) - 2;
	}
} else {
	instance_destroy();
}