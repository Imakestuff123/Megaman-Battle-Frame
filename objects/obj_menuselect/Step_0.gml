/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_marker)) {
	holder.image_speed = 1;
} else {
	if (holder.image_index == 0) {
		holder.image_speed = 0;
	}
}

if (room != menu) {
	instance_destroy();
}