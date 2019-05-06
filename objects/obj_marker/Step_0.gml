/// @description Insert description here
// You can write your code in this editor

if (player == 1) {
	key_right = keyboard_check(obj_management.p1buttonmoveright);
	key_left = -keyboard_check(obj_management.p1buttonmoveleft);
	key_up = -keyboard_check(obj_management.p1buttonup);
	key_down = keyboard_check(obj_management.p1buttondown);
	key_deselect = keyboard_check(obj_management.p1buttonjump);
	key_select = keyboard_check(obj_management.p1buttonshoot);
}
if (player == 2) {
	key_right = keyboard_check(obj_management.p2buttonmoveright);
	key_left = -keyboard_check(obj_management.p2buttonmoveleft);
	key_up = -keyboard_check(obj_management.p2buttonup);
	key_down = keyboard_check(obj_management.p2buttondown);
	key_deselect = keyboard_check(obj_management.p2buttonjump);
	key_select = keyboard_check(obj_management.p2buttonshoot);
}

if (selected != 1) {
	x += (key_right + key_left) * 4;
	y += (key_up + key_down) * 4;
}
if (place_meeting(x, y, obj_menuselect)) && (key_select){
	current = instance_place(x, y, obj_menuselect);
	if (player == 1) {
		obj_management.p1character = current.character;
		
	}
	if (player == 2) {
		obj_management.p2character = current.character;
	}
	current.image_speed = 1;
	if (selected != 1) {
		if (player == 1) {
			script_execute(scr_createplayer, player, current.character, 25, 34);
			//p1.marker = id;
			//p1.marker = 0;
		}
		if (player == 2) {
			script_execute(scr_createplayer, player, current.character, 40, 34);
			//p2.marker = id;
		}
	}
	selected = 1;
}

/*if (selected == 1) && (key_deselect) && (room == menu) {
	selected = 0;
	if (player == 1) {
		obj_management.p1character = 0;
	}
	if (player == 2) {
		obj_management.p2character = 0;
	}
	current.image_speed = 0;
	current.image_index = 0;
	current = 0;
	
}*/

if (place_meeting(x, y, obj_mapicon)) && (key_select){
	var mapcurrent = instance_place(x, y, obj_mapicon);
	switch (mapcurrent.map) {
		case 1:
			room = battleroom;
			break;
		case 2:
			room = flashroom;
			break;
		case 3:
			room = bubbleroom;
			break;
		case 4:
			room = elecroom;
			break;
		case 5:
			room = gutsroom;
			break;
		case 6:
			room = shadowroom;
			break;
		case 7:
			room = highwayroom;
			break;
	}
}




x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);