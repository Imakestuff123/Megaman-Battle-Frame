/// @description Insert description here
// You can write your code in this editor


if (slidingtimer > 0) && !(onground) {					
	draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 1.5);
	if (character == 5) || (character == 10) {
		if (sliding == 1) {
			draw_sprite(sprite_index, 0, x - 12, y + 6);
			draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 3);
			draw_sprite(sprite_index, 0, x - 12 * 2, y + 6 * 2);
		}
		if (sliding == -1) {
			draw_sprite_ext(sprite_index, 0, x + 12, y + 6, -1, 1, 0, c_white, ((((((100 / slidingtime) * slidingtimer)) / 100)) / 1.5));
			//draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 3);
			draw_sprite_ext(sprite_index, 0, x + 12 * 2, y + 6 * 2, -1, 1, 0, c_white, ((((((100 / slidingtime) * slidingtimer)) / 100)) / 3));
		}
	}
	/*if (character == 10) {
		if (sliding == 1) {
			draw_sprite(sprite_index, 0, x - 12, y + 6);
			draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 3);
			draw_sprite(sprite_index, 0, x - 12 * 2, y + 6 * 2);
		}
		if (sliding == -1) {
			draw_sprite(sprite_index, 0, x + 12, y + 6);
			draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 3);
			draw_sprite(sprite_index, 0, x + 12 * 2, y + 6 * 2);
		}
	}*/
}
if (slidingtimer > 0) && (onground) {					
	draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 1.5);
	if (character == 5) || (character == 10){
		if (sliding == 1) {
			draw_sprite(sprite_index, 0, x - 12, y);
			draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 3);
			draw_sprite(sprite_index, 0, x - 12 * 2, y);
		}
		if (sliding == -1) {
			draw_sprite_ext(sprite_index, 0, x + 12, y, -1, 1, 0, c_white, ((((((100 / slidingtime) * slidingtimer)) / 100)) / 1.5));
			//draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 3);
			draw_sprite_ext(sprite_index, 0, x + 12 * 2, y, -1, 1, 0, c_white, ((((((100 / slidingtime) * slidingtimer)) / 100)) / 3));
		}
	}
	/*if (character == 10) {
		if (sliding == 1) {
			draw_sprite(sprite_index, 0, x - 12, y);
			draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 3);
			draw_sprite(sprite_index, 0, x - 12 * 2, y);
		}
		if (sliding == -1) {
			draw_sprite(sprite_index, 0, x + 12, y);
			draw_set_alpha((((((100 / slidingtime) * slidingtimer)) / 100)) / 3);
			draw_sprite(sprite_index, 0, x + 12 * 2, y);
		}
	}	*/
}

if (sprite_index == spr_protoshielddashright) {
	if (image_xscale == 1) {
		draw_set_alpha(0.5);
		draw_sprite(sprite_index, 0, x - 12, y);
		draw_set_alpha(0.25);
		draw_sprite(sprite_index, 0, x - 12 * 2, y);
	}
	if (image_xscale == -1) {
		draw_sprite_ext(sprite_index, 0, x + 12, y, -1, 1, 0, c_white, 0.5);
		draw_sprite_ext(sprite_index, 0, x + 12 * 2, y, -1, 1, 0, c_white, 0.25);
	}
}
draw_set_alpha(1);

draw_set_color(c_white);
if (playernumber == 1) {
	draw_sprite_ext(spr_playericon, 0, x, y - 12, 1, 1, 0, c_white, 0.3);
}
if (playernumber == 2) {
	draw_sprite_ext(spr_playericon, 1, x, y - 12, 1, 1, 0, c_white, 0.3);
}

//draw_text(x - (sprite_width / 2), y - 30, ammoregenrate);

draw_self();

if (stuntimer > 0) && (stuntype == 1){
	if (stuntimer mod 4 == 0) {
		draw_sprite(spr_stunparticles, 0, x, y);
	} else {
		draw_sprite(spr_stunparticles, 1, x, y);
	}
}