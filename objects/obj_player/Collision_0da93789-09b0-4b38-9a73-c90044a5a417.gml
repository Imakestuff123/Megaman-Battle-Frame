/// @description Insert description here
// You can write your code in this editor

if (invincibility == 0) {
	hhealth -= 3;
	currentflash = instance_create_layer(x, y, "Effects", obj_flash);
	currentflash.image_speed = 3;
	currentflash.player = id;
	invincibility = 1;
}