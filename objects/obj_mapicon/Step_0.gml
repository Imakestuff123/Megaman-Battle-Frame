/// @description Insert description here
// You can write your code in this editor

if (room != mapmenu) {
	instance_destroy();
}

if !(place_meeting(x, y, obj_marker)) {
	image_speed = 0;	
	image_index = 0;
}