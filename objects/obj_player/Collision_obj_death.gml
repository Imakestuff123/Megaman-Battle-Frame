/// @description Insert description here
// You can write your code in this editor

if (room != menu){
	var kms = instance_place(x, y, obj_death);

	if (kms.kms == 1) && (invincibility == 0) {
		stuntimer = 0;
		specialtimer = 0;
		hhealth -= 10 * damagemultiplyer;
		currentflash = instance_create_layer(x, y, "Effects", obj_flash);
		currentflash.image_speed = 3;
		currentflash.player = id;
		invincibility = 1;
		chargetimer = 0;
	}
}