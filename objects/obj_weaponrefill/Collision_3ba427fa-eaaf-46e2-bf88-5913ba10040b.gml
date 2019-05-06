/// @description Insert description here
// You can write your code in this editor
snake = instance_place(x, y, obj_snake); 
player = snake.player
if (instance_exists(player)) {
	weaponrefilltimer = 1;
	visible = false;
	x = 0;
	y = 0;
}
