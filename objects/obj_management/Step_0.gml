/// @description Insert description cuhere
// You can write your code in this editor
if (room == startmenu) {
	if (startroomanimationtimer1 > 0) startroomanimationtimer1--;
	if (startroomanimationtimer1 == 0) {
		startroomanimationtimer2 = 80;
		startroomanimationtimer1 = -1;	
	}
	if (startroomanimationtimer2 > 0) startroomanimationtimer2--;
	if (startroomanimationtimer2 == 0) {
		startroomanimationtimer3 = 80;	
		startroomanimationtimer2 = -1;
	}
	if (startroomanimationtimer3 > 0) startroomanimationtimer3--;
	if (startroomanimationtimer3 == 0) {
		audio_play_sound(sound_menucrash, 1, false);
		startroomanimationtimer3 = -1;
		startroomanimationtimer4 = 90;
	}
	if (startroomanimationtimer4 > 0) {
		startroomanimationtimer4--;
	}
	if (startroomanimationtimer4 == 0) {
		startroomanimationtimer4 = -1;
		enterblinktimer = 0;
	}
	if (enterblinktimer > -30) enterblinktimer--;
	if (enterblinktimer == -30) enterblinktimer = 30;
	
	if (startroomanimationtimer4 == 0) || (startroomanimationtimer4 == -1) && (keyboard_check_pressed(vk_enter)) {
		room = menu;	
	}
	if (startroomanimationtimer4 > 0) || (startroomanimationtimer4 == -2) {
		if (keyboard_check_pressed(vk_enter)) {
			startroomanimationtimer1 = -1;
			startroomanimationtimer2 = -1;
			startroomanimationtimer3 = -1;
			startroomanimationtimer4 = 90;
			//audio_play_sound(sound_menucrash, 1, false);
		}
	}
}
if (room == menu) {
	blinktimer++;
	if (p1character != 0) && (p2character != 0) {
		if (keyboard_check_pressed(vk_enter)) {
			/*randomize();
			var i = irandom_range(0, 4);
			switch (i) {
				case 0:
					room = battleroom;
					break;
				case 1:
					room = bubbleroom;
					break;
				case 2:
					room = gutsroom;
					break;
				case 3:	
					room = elecroom;
					break;
				case 4:
					room = flashroom;
					break;
			}*/
			room = mapmenu
		}
	}
}
if ((room == battleroom)){
	timer--;
}
if (startingframes == 0) && (room != menu) && (room != mapmenu) && (room != startmenu) {
	if ((p1character == 3) || (p2character == 3)) {
		audio_play_sound(sound_blues, 1, false);
		blues = 1;
	}
	if (room == flashroom) {
		if !(audio_is_playing(sound_blues)) {
			audio_play_sound(sound_flashtheme, 1, true);
		}
	}
	if (room == gutsroom) {
		if !(audio_is_playing(sound_blues)) {
			audio_play_sound(sound_gutstheme, 1, true);
		}
	}
	if (room == bubbleroom) {
		if !(audio_is_playing(sound_blues)) {
			audio_play_sound(sound_bubbletheme, 1, true);
		}
	}
	if (room == elecroom) {
		if !(audio_is_playing(sound_blues)) {
			audio_play_sound(sound_electheme, 1, true);
		}
	}
	if (room == battleroom) {
		timer = room_speed * 2;
		if !(audio_is_playing(sound_blues)) {
			audio_play_sound(sound_metalmantheme, 1, true);
		}	
	}
	if (room == shadowroom) {
		if !(audio_is_playing(sound_blues)) {
			audio_play_sound(sound_shadowtheme, 1, true);
		}
	}
	if (room == highwayroom) {
		if !(audio_is_playing(sound_blues)) {
			audio_play_sound(sound_centralhighway, 1, true);
		}
	}
}
if (room != menu) && (room != mapmenu) && (room != startmenu) {
	if ((p1character == 3) || (p2character == 3)) && (blues != 0){
		if (audio_is_playing(sound_blues)) {
			blues = 1; 
				} else {
			blues = 0;
			if (room == battleroom) {
				audio_play_sound(sound_metalmantheme, 1, true);
			}
			if (room == flashroom) {
				audio_play_sound(sound_flashtheme, 1, true);
			}
			if (room == bubbleroom) {
				audio_play_sound(sound_bubbletheme, 1, true);
			}
			if (room == elecroom) {
				audio_play_sound(sound_electheme, 1, true);
			}
			if (room == gutsroom) {
				audio_play_sound(sound_gutstheme, 1, true);
			}
			if (room == shadowroom) {
				audio_play_sound(sound_shadowtheme, 1, true);
			}
			if (room == highwayroom) {
				audio_play_sound(sound_centralhighway, 1, true);
			}
		}
	}
}
if (room == battleroom) || (room == bubbleroom) || (room == gutsroom) || (room == elecroom) || (room == flashroom) || (room == shadowroom) || (room == highwayroom){
	startingframes++;
	
	if (startingframes == starttime) {
		script_execute(scr_start, 1, p1character, 12, 7);
		script_execute(scr_start, 2, p2character, 40, 19);
	}
	if (escapetimer > 0) {
		if (escapetimer == 1) {
			escapetimer -= 2;
		} else {
			escapetimer--;
		}
	}
	if (backuptimer > 0) {
		if (backuptimer == 1) {
			backuptimer -= 2;
		} else {
			backuptimer--;
		}
	}
	if (backuptimer < 0) {
		room = menu;
		backuptimer = 0;
	}
	if (escapetimer == room_speed * 5) && (instance_exists(obj_player)){
		audio_stop_all();
		audio_play_sound(sound_finish, 1, false);
	}
	if (escapetimer < 0) {
		if (instance_exists(obj_player)) {
			escape = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_escape);
			escape.character = obj_player.character;
			with (escape) {
				switch (character) {
					case 1:
						sprite_index = spr_megastart;
						break;
					case 2:
						sprite_index = spr_metalstart;
						break;
					case 3:
						sprite_index = spr_protostart;
						break;
					case 4:
						sprite_index = spr_quickstart;
						break;
					case 5:
						sprite_index = spr_zerostart;
						break;
					case 6:
						sprite_index = spr_cutstart
						break;
					case 7:
						sprite_index = spr_skullstart;
						break;
					case 8:
						sprite_index = spr_snakestart;		
						break;
					case 9:
						sprite_index = spr_rollstart;
						break;
					case 10:
						sprite_index = spr_bassstart;
						break;
					case 11:
						sprite_index = spr_ringstart;
						break;
					case 12:
						sprite_index = spr_geministart;
						break;
					case 13:
						sprite_index = spr_chillstart;
						break;
					case 14:
						sprite_index = spr_codastart;
						break;
					case 15:
						sprite_index = spr_elecstart;
						break;
					case 16:
						sprite_index = spr_firestart;
						break;
				}
			}
			with (obj_player) {
				instance_destroy();
			}
		} else {
			audio_stop_all();
			audio_play_sound(sound_finish, 1, false);
		}
		escapetimer = 0;
		backuptimer = room_speed * 7;
	} 
		
}





