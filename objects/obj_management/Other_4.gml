/// @description Insert description here
// You can write your code in this editor
if (room == startmenu) 
{
	startroomanimationtimer1 = 60;
	
}
if (room == battleroom) || (room == flashroom) || (room == elecroom) || (room == gutsroom) || (room == bubbleroom) || (room == shadowroom) || (room == highwayroom){
	startingframes = 0;
	if (p1character == 3) || (p2character == 3) {
		starttime = room_speed * 4;
	} else {
		starttime = room_speed * 3;
	}
	blues = 0;
}
if (room == menu) {
	//script_execute(scr_start, 1, 3, 25, 34);
	backuptimer = 0;
	escapetimer = 0;
	p1character = 0;
	p2character = 0;
	audio_stop_all();
	backtomenu = 0;
	blinktimer = 0;
	var p1marker = instance_create_layer(x, y, "Instances", obj_marker);
	p1marker.player = 1;
	p1marker.image_blend = c_red;
	var p2marker = instance_create_layer(x, y, "Instances", obj_marker);
	p2marker.player = 2;
	p2marker.image_blend = c_orange;
	randomize();
	var ii = irandom_range(0, 1);
	if (ii == 0) {
		audio_play_sound(sound_selecttheme2, 1, true);
	}
	if (ii == 1) {
		audio_play_sound(sound_selecttheme3, 1, true);
	}
	for (var i = 1; i <= 16; i++) {
		if (i <= 8) {
			var holder = instance_create_layer(((7 + i * 2) * 32) - 5, (7 * 32) - 5, "Holders", obj_holder);
			var icon = instance_create_layer((7 + i * 2) * 32, 7 * 32, "Icons", obj_menuselect);
		}
		if (i > 8) && (i <= 18) {
			var holder = instance_create_layer(((7 + ((i - 9) * 2)) * 32) - 5, (9 * 32) - 5.5, "Holders", obj_holder);
			var icon = instance_create_layer((7 + ((i - 9) * 2)) * 32, 9 * 32, "Icons", obj_menuselect);
		}
		icon.holder = holder;
		icon.character = i;
		switch (i) {
			case 1:
				icon.sprite_index = spr_megamugshot;
				break;
			case 2:
				icon.sprite_index = spr_metalmugshot;
				break;
			case 3:
				icon.sprite_index = spr_protomugshot;
				break;
			case 4:
				icon.sprite_index = spr_quickmugshot;
				break;
			case 5:
				icon.sprite_index = spr_zeromugshot;
				break;
			case 6:
				icon.sprite_index = spr_cutmugshot;
				break;
			case 7:
				icon.sprite_index = spr_skullmugshot;
				break;
			case 8:
				icon.sprite_index = spr_snakemugshot;
				break;
			case 9:
				icon.sprite_index = spr_rollmugshot;
				break;
			case 10:
				icon.sprite_index = spr_bassmugshot;
				break;
			case 11:
				icon.sprite_index = spr_ringmugshot;
				break;
			case 12:
				icon.sprite_index = spr_geminimugshot;
				break;
			case 13:
				icon.sprite_index = spr_chillmugshot;
				break;
			case 14:
				icon.sprite_index = spr_codamugshot;
				break;
			case 15:	
				icon.sprite_index = spr_elecmugshot;
				break;
			case 16:
				icon.sprite_index = spr_firemugshot;
				break;
		}
	}
} else {
	audio_stop_sound(sound_selecttheme2);
	audio_stop_sound(sound_selecttheme3);
}

if (room == mapmenu) {
	audio_stop_all();
	var p1marker = instance_create_layer(x, y, "Instances", obj_marker);
	p1marker.player = 1;
	p1marker.image_blend = c_red;
	randomize();
	var ii = irandom_range(0, 1);
	if (ii == 0) {
		audio_play_sound(sound_passwordtheme2, 1, true);
	}
	if (ii == 1) {
		audio_play_sound(sound_passwordtheme3, 1, true);
	}
	for (var i = 1; i <= 7; i++) {
		if (i <= 4) {
			var icon = instance_create_layer((i - 1) * 256, 0, "Icons", obj_mapicon);
		}
		if (i > 4) && (i <= 8) {
			var icon = instance_create_layer((i - 5) * 256, 192, "Icons", obj_mapicon);
		}
		if (i > 8) && (i <= 12) {
			var icon = instance_create_layer((i - 9) * 256, 192, "Icons", obj_mapicon);
		}
		icon.map = i;
		switch (i) {
			case 1:
				icon.sprite_index = spr_metalroomicon;
				break;
			case 2:
				icon.sprite_index = spr_flashroomicon;
				break;
			case 3:
				icon.sprite_index = spr_bubbleroomicon;
				break;
			case 4:
				icon.sprite_index = spr_elecroomicon;
				break;
			case 5:
				icon.sprite_index = spr_gutsroomicon;
				break;
			case 6:
				icon.sprite_index = spr_shadowroomicon;
				break;
			case 7:
				icon.sprite_index = spr_workinprogressicon;
				break;
		}
	}
} else {
	audio_stop_sound(sound_passwordtheme2);
	audio_stop_sound(sound_passwordtheme3);
}