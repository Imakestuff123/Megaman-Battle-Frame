/// @description Insert description here
// You can write your code in this editor

currenttouching = (instance_place(x, y, obj_player));
if (instance_exists(currenttouching)) && (instance_exists(player)) {
	if (currenttouching.id != player) {
	
				with (currenttouching) {
					if (invincibility == 0) {
						hhealth -= 1 * damagemultiplyer;
						specialtimer = 0;
						currentflash = instance_create_layer(x, y, "Effects", obj_flash);
						currentflash.image_speed = 3;
						currentflash.player = id;
						invincibility = 1;
						chargetimer = 0;
						with (other) {
							instance_destroy();
						}
					}
				}
	}
	
		
		}
