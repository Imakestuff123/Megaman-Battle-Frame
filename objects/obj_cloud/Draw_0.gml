/// @description Insert description here
// You can write your code in this editor

draw_self();
//if (phase == 1) draw_text(x + 10, y - 8, stoppoint);

if (phase == 1) {
	if (timer <= 120 - stoppoint) {
		if (timer mod 4 == 0) {
			draw_sprite(spr_elecexplosion, 0, x, y + (stoppoint * 8) + 4);
		} else {
			draw_sprite(spr_elecexplosion, 1, x, y + (stoppoint * 8) + 4);	
		}
	}
}