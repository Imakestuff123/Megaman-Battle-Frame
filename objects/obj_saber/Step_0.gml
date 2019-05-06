/// @description Insert description here
// You can write your code in this editor

if !(instance_exists(player)) {
	instance_destroy();
}
timer--;
if (instance_exists(player)) {
	if (player.shoottimer <= 0) {
		instance_destroy();
	}
	if (player.sprite_index != spr_zeroslideright){
		if (sprite_index == spr_saberright) {
			if (player.sprite_index != spr_zerosliceright) && (player.sprite_index != spr_zerosliceairright) && (player.sprite_index != spr_zeroslideright) && (player.image_xscale != 1) {
				instance_destroy();
			}
			if (player.image_xscale == -1) {
				instance_destroy();
			}
			if (timer > 7) && (timer < 9){
				x = player.x + 13;
				y = player.y + 2;
			}
			if (timer > 4) && (timer < 7) {
				x = player.x;
				y = player.y + 2;
			}
			if (timer < 4) {
				x = player.x + 14;
				y = player.y + 3;
			}
		}
		if (sprite_index == spr_saberleft) {
			if (player.sprite_index != spr_zerosliceright) && (player.sprite_index != spr_zerosliceairright) && (player.sprite_index != spr_zeroslideright) && (player.image_xscale != -1){
				instance_destroy();
			}
			if (player.image_xscale == 1) {
				instance_destroy();
			}
			if (timer > 7) && (timer < 9){
				x = player.x - 13;
				y = player.y + 2;
			}
			if (timer > 4) && (timer < 7) {
				x = player.x;
				y = player.y + 2;
			}
			if (timer < 4) {
				x = player.x - 14;
				y = player.y + 3;
			}
		}
	}
	if (sprite_index == spr_saberright) && (player.sprite_index == spr_zeroslideright){
		if (player.sprite_index != spr_zerosliceright) && (player.sprite_index != spr_zerosliceairright) && (player.sprite_index != spr_zeroslideright) && (player.image_xscale != 1) {
			instance_destroy();
		}
		if (timer > 7) && (timer < 9){
			x = player.x + 13;
			y = player.y + 5;
		}
		if (timer > 4) && (timer < 7) {
			x = player.x;
			y = player.y + 5;
		}
		if (timer < 4) {
			x = player.x + 14;
			y = player.y + 6;
		}
	}
	if (sprite_index == spr_saberleft) && (player.sprite_index == spr_zeroslideright){
		if (player.sprite_index != spr_zerosliceright) && (player.sprite_index != spr_zerosliceairright) && (player.sprite_index != spr_zeroslideright) && (player.image_xscale != -1){
			instance_destroy();
		}
		if (timer > 7) && (timer < 9){
			x = player.x - 13;
			y = player.y + 5;
		}
		if (timer > 4) && (timer < 7) {
			x = player.x;
			y = player.y + 5;
		}
		if (timer < 4) {
			x = player.x - 14;
			y = player.y + 6;
		}
	}
}