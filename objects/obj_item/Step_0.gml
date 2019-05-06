/// @description Insert description here
// You can write your code in this editor
timer--;

if (itemtype == 1) {
	image_speed = 1;
	if (timer > 285) && (timer <= 360) {
		move = 0.25;
	} else {
		if (move < 1.2) {
			move += 0.05;
		}
	}
	y -= move;
	pplayer = instance_place(x, y - 1, obj_player);
	if (instance_exists(pplayer)) {
		if (timer > 285) && (timer <= 360) timer = 284;
		pplayer.y -= move;
	}
	if (timer <= 80) {
		if (sprite_index = spr_item1right) {
			sprite_index = spr_item1rightblink;
		}
		if (sprite_index = spr_item1left) {
			sprite_index = spr_item1leftblink;
		}
	}
}

if (itemtype == 2) {
	if (place_meeting(x + move, y, obj_player)) || (place_meeting(x - move, y, obj_player)) || (place_meeting(x + move, y, obj_clone)) || (place_meeting(x - move, y, obj_clone))  {
		instance_destroy();
	}
	
	if (timer <= 80) {
		image_speed = 1;
		if (sprite_index = spr_item2right) {
			sprite_index = spr_item2rightblink;
		}
		if (sprite_index = spr_item2left) {
			sprite_index = spr_item2leftblink;
		}
	}
	if (place_meeting(x, y - 1, obj_player)) {
		moving = 1;
		timer += 5;
	}
	if (moving == 1) {
		if !(place_meeting(x, y - 1, obj_player)) {
			timer -= 4.5;
		}
		if (sprite_index == spr_item2rightblink) {
			sprite_index = spr_item2right;
		}
		if (sprite_index == spr_item2leftblink) {
			sprite_index = spr_item2left
		}
		image_speed = 1;
		if (timer < 270) {
			if (sprite_index == spr_item2right) {
				if (move < 1) {
					move += 0.05;
				}
			}
			if (sprite_index == spr_item2left) {
				if (move > -1) {
					move -= 0.05;
				}
			}
		} else {
			if (sprite_index == spr_item2right) {
				if (move < 3.5) {
					move += 0.15;
				}
			}
			if (sprite_index == spr_item2left) {
				if (move > -3.5) {
					move -= 0.15;
				}
			}
		}
		x += move;
	}
	
	
}

if (timer <= 0) {
	instance_destroy();
}



