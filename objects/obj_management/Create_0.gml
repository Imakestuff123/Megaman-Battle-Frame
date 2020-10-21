/// @description Insert description here
// You can write your code in this editor
/*
bazinga = instance_create_layer(32 * 9, 32 * 13, "Instances", obj_wall);
with (bazinga) facing = 1;
bbazinga = instance_create_layer(32 * 10, 32 * 13, "Instances", obj_wall);
with (bbazinga) facing = 1;
*/

timer = 0;
startroomanimationtimer2 = -2;
startroomanimationtimer3 = -2;
startroomanimationtimer4 = -2;
enterblinktimer = -2;

p1buttonmoveright = vk_right;
p1buttonmoveleft = vk_left;
p1buttonjump = ord("J");
p1buttonshoot = ord("K");
p1buttondown = vk_down;
p1buttonup = vk_up;
p2buttonmoveright = ord("D");
p2buttonmoveleft = ord("A");
p2buttonjump = ord("G");
p2buttonshoot = ord("F");
p2buttondown = ord("S");
p2buttonup = ord("W");

p1 = -1;
p2 = -1;
		
global.hazards = 1;
global.dev = 0;


startingframes = 0;

backtomenu = 0;

blues = 0;

/*
	conveyer = instance_create_layer(16 * 14, 16 * 35, "Instances", obj_wall);
	conveyer.facing = 1;
	conveyer.sprite_index = spr_smallconveyerright;
	ccconveyer = instance_create_layer(16 * 34, 16 * 35, "Instances", obj_wall);
	ccconveyer.facing = 1;
	ccconveyer.sprite_index = spr_smallconveyerright;
	cccconveyer = instance_create_layer(16 * 24, 16 * 38, "Instances", obj_wall);
	cccconveyer.facing = 1;
	cccconveyer.sprite_index = spr_smallconveyerright;
	ccccconveyer = instance_create_layer(16 * 42, 16 * 43, "Instances", obj_wall);
	ccccconveyer.facing = 1;
	ccccconveyer.sprite_index = spr_smallconveyerright;
	cccccconveyer = instance_create_layer(16 * 19, 16 * 43, "Instances", obj_wall);
	cccccconveyer.facing = 1;
	cccccconveyer.sprite_index = spr_conveyerright;
	cconveyer = instance_create_layer(16 * 40, 16 * 29, "Instances", obj_wall);
	cconveyer.facing = 1;
	cconveyer.sprite_index = spr_conveyerright;
	ccccccconveyer = instance_create_layer(16 * 12, 16 * 29, "Instances", obj_wall);
	ccccccconveyer.facing = 1;
	ccccccconveyer.sprite_index = spr_conveyerright;
	cccccccconveyer = instance_create_layer(16 * 31, 16 * 20, "Instances", obj_wall);
	cccccccconveyer.facing = 1;
	cccccccconveyer.sprite_index = spr_conveyerright;
	ccccccccconveyer = instance_create_layer(16 * 16, 16 * 14, "Instances", obj_wall);
	ccccccccconveyer.facing = 1;
	ccccccccconveyer.sprite_index = spr_conveyerright;
	cccccccccconveyer = instance_create_layer(16 * 49, 16 * 21, "Instances", obj_wall);
	cccccccccconveyer.facing = 1;
	cccccccccconveyer.sprite_index = spr_smallconveyerright;
	*/
escapetimer = 0;
backuptimer = 0;