/// @description Insert description here
// You can write your code in this editor
timer--;
if (timer <= 0) {
	instance_destroy();
}
if  (place_meeting(x + speed, y, obj_wall)) || (place_meeting(x - speed, y, obj_wall)) || (place_meeting(x, y, obj_wall)) || (place_meeting(x + speed, y, obj_skullshield)) || (place_meeting(x - speed, y, obj_skullshield)) || (place_meeting(x, y, obj_skullshield)) || (place_meeting(x + speed, y, obj_item)) || (place_meeting(x - speed, y, obj_item)) || (place_meeting(x, y, obj_item))  {
	if (type == 2) {
		instance_destroy();
	}
	direction += 135;
	image_angle = direction;
	
	
	
}

if !(instance_exists(player)) {
	instance_destroy();
}