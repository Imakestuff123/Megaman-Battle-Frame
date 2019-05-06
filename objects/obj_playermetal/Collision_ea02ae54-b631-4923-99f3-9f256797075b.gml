/// @description Insert description here
// You can write your code in this editor


currenttouching = (instance_place(x, y, obj_bullet));
if (currenttouching.player == id) {
	} else { 
	if (invincibility == 0) {
	hhealth -= currenttouching.bulletstrength;
	currentflash = instance_create_layer(x, y, "Effects", obj_flash);
	currentflash.image_speed = 3;
	currentflash.player = id;
	invincibility = 1;
	with (currenttouching) {
		if (instance_exists(player)) player.amountofbullets--;
			instance_destroy();
	}
		}
	}
