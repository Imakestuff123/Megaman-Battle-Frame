/// @description Insert description here
// You can write your code in this editor

if ((place_meeting(x, y + 13, obj_wall)) && (sprite_index != spr_megastart) && (sprite_index != spr_zerostart)) || ((place_meeting(x, y + 4, obj_wall)) && (sprite_index == spr_megastart)) || ((place_meeting(x, y + 3.5, obj_wall)) && (sprite_index == spr_zerostart)) {
	image_speed = 1;
} else { 
	y += 4;
}
if (image_index == (image_number - 1)) {
	instance_destroy();
}
