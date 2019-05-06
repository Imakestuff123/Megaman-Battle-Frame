

if (!(place_meeting(x, y + 1,obj_wall))) {
	if (lastdirection == 1) {
		if !(place_meeting(x + 16, y - 12, obj_wall)) {
			snake = instance_create_layer(x + 16, y - 12, "Instances", obj_snake);
			snake.sprite_index = spr_snakebulletright;
			shoottimer = 20;
			reloadtimer = reloadtime;
			amountofbullets++;
			snake.move = lastdirection;
			currentammo -= 2;
			snake.player = id;
		}
		
	}
	if (lastdirection == -1) {
		if !(place_meeting(x - 16, y - 12, obj_wall)) {
			snake = instance_create_layer(x - 16, y - 12, "Instances", obj_snake);
			snake.sprite_index = spr_snakebulletleft;
			shoottimer = 20;
			reloadtimer = reloadtime;
			amountofbullets++;
			snake.move = lastdirection;
			currentammo -= 2;
			snake.player = id;
		}
	}
} else {
	if (lastdirection == 1) {
		if !(place_meeting(x + 15, y - 4, obj_wall)) {
			snake = instance_create_layer(x + 15, y - 4, "Instances", obj_snake);
			snake.sprite_index = spr_snakebulletright;
			shoottimer = 20;
			reloadtimer = reloadtime;
			amountofbullets++;
			snake.move = lastdirection;
			currentammo -= 2;
			snake.player = id;
		}
	}
	if (lastdirection == -1) {
		if !(place_meeting(x - 15, y - 4, obj_wall)) {
			snake = instance_create_layer(x - 15, y - 4, "Instances", obj_snake);
			snake.sprite_index = spr_snakebulletleft;
			shoottimer = 20;
			reloadtimer = reloadtime;
			amountofbullets++;
			snake.move = lastdirection;
			currentammo -= 2;
			snake.player = id;
		}
	}
}
