function scr_start(argument0, argument1, argument2, argument3) {
	var player = argument0;
	var character = argument1;
	var xx = argument2; 
	var yy = argument3;

	start = instance_create_layer(xx * 16, yy * 16, "Instances", obj_start);
	p1 = 0;
	p2 = 0;
	p3 = 0;
	p4 = 0;
	start.player = player;
	start.character = character;

	switch (character) {
		case 1:
			start.sprite_index = spr_megastart;
			break;
		case 2:
			start.sprite_index = spr_metalstart;
			break;
		case 3:
			start.sprite_index = spr_protostart;
			break;
		case 4:
			start.sprite_index = spr_quickstart;
			break;
		case 5:
			start.sprite_index = spr_zerostart;
			break;
		case 6:
			start.sprite_index = spr_cutstart
			break;
		case 7:
			start.sprite_index = spr_skullstart;
			break;
		case 8:
			start.sprite_index = spr_snakestart;		
			break;
		case 9:
			start.sprite_index = spr_rollstart;
			break;
		case 10:
			start.sprite_index = spr_bassstart;
			break;
		case 11:
			start.sprite_index = spr_ringstart;
			break;
		case 12:
			start.sprite_index = spr_geministart;
			break;
		case 13:
			start.sprite_index = spr_chillstart;
			break;
		case 14:
			start.sprite_index = spr_codastart;
			break;
	}


}
