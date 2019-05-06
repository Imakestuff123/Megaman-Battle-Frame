/// @description Insert description here
// You can write your code in this editor


if (darkness == 0) && (darktimer > 0){
	draw_set_alpha(1 - (darktimer / 100));
	draw_sprite(spr_darkness, 0, x, y);
}
if (darkness == 1) && (darktimer == 0){
	draw_set_alpha(1);
	draw_sprite(spr_darkness, 0, x, y);
}
if (darkness == 1) && (darktimer > 0) {
	draw_set_alpha((darktimer / 100));
	draw_sprite(spr_darkness, 0, x, y);
}
draw_set_alpha(1);
draw_self();
//draw_text(x, y + 20, darkness);