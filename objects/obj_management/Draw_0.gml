/// @description Insert description here
// You can write your code in this editor
if (room == startmenu) {
	//draw_line(room_width / 2 - 1, 0, room_width / 2 + 1, room_height);
	draw_sprite_ext(spr_megamanlogo, 0, room_width - (1 - (startroomanimationtimer1 / 100)) * (room_width / 2 + (184 / 2 * 3)), 4 * 32, 3, 3, 1, c_white, 1);
	//draw_sprite_ext(spr_text, 22, room_width - (1 - (startroomanimationtimer1 / 100)) * 900 /*+ 8 * 4 * letter */, 4 * 32, 4, 4, 1, c_white, 1);
	//draw_sprite_ext(spr_text, 14, room_width - (1 - (startroomanimationtimer1 / 100)) * 900 + 32 * 1, 4 * 32, 4, 4, 1, c_white, 1);
	//draw_sprite_ext(spr_text, 16, room_width - (1 - (startroomanimationtimer1 / 100)) * 900 + 32 * 2, 4 * 32, 4, 4, 1, c_white, 1);
	//draw_sprite_ext(spr_text, 10, room_width - (1 - (startroomanimationtimer1 / 100)) * 900 + 32 * 3, 4 * 32, 4, 4, 1, c_white, 1);
	//draw_sprite_ext(spr_text, 22, room_width - (1 - (startroomanimationtimer1 / 100)) * 900 + 32 * 4, 4 * 32, 4, 4, 1, c_white, 1);
	//draw_sprite_ext(spr_text, 10, room_width - (1 - (startroomanimationtimer1 / 100)) * 900 + 32 * 5, 4 * 32, 4, 4, 1, c_white, 1);
	//draw_sprite_ext(spr_text, 23, room_width - (1 - (startroomanimationtimer1 / 100)) * 900 + 32 * 6, 4 * 32, 4, 4, 1, c_white, 1);
	if (startroomanimationtimer2 != -2) { 
		draw_sprite_ext(spr_text, 11, room_width / 6, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer2 / 100)));
		draw_sprite_ext(spr_text, 10, room_width / 6 + 48, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer2 / 100)));
		draw_sprite_ext(spr_text, 29, room_width / 6 + 48 * 2, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer2 / 100)));
		draw_sprite_ext(spr_text, 29, room_width / 6 + 48 * 3, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer2 / 100)));
		draw_sprite_ext(spr_text, 21, room_width / 6 + 48 * 4, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer2 / 100)));
		draw_sprite_ext(spr_text, 14, room_width / 6 + 48 * 5, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer2 / 100)));
	}
	if (startroomanimationtimer3 != -2) {
		draw_sprite_ext(spr_text, 15, 27 * room_width / 48, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer3 / 100)));
		draw_sprite_ext(spr_text, 27, 27 * room_width / 48 + 48, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer3 / 100)));
		draw_sprite_ext(spr_text, 10, 27 * room_width / 48 + 48 * 2, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer3 / 100)));
		draw_sprite_ext(spr_text, 22, 27 * room_width / 48 + 48 * 3, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer3 / 100)));
		draw_sprite_ext(spr_text, 14, 27 * room_width / 48 + 48 * 4, room_height / 2, 6, 6, 1, c_white, (1 - (startroomanimationtimer3 / 100)));
	}
	if (startroomanimationtimer4 != -2) {
		draw_sprite_ext(spr_whitescreen, 0, 0, 0, 1, 1, 1, c_white, startroomanimationtimer4 / 100);	
		//48 x 32
		draw_sprite_ext(spr_text, 25, room_width / 4 - 32, room_height - 200 - 64, 4, 4, 1, c_white, 1 - startroomanimationtimer4 / 100);
		draw_sprite_ext(spr_text, 1, room_width / 4, room_height - 200 - 64, 4, 4, 1, c_white, 1 - startroomanimationtimer4 / 100);
		
		draw_sprite_ext(spr_text, 25, 3 * room_width / 4 - 32, room_height - 200 - 64, 4, 4, 1, c_white, 1 - startroomanimationtimer4 / 100);
		draw_sprite_ext(spr_text, 2 , 3 * room_width / 4, room_height - 200 - 64, 4, 4, 1, c_white, 1 - startroomanimationtimer4 / 100);
		
		
		draw_sprite_ext(spr_arrowkeys, 0, room_width / 4 - 144, room_height - 200, 3, 3, 1, c_white, 1 - (startroomanimationtimer4 / 100));
		draw_sprite_ext(spr_jk, 0, room_width / 4 + 48, room_height - 200 + 16, 3, 3, 1, c_white, 1 - (startroomanimationtimer4 / 100));
		draw_sprite_ext(spr_jk, 1, room_width / 4 + 104, room_height - 200 + 16, 3, 3, 1, c_white, 1 - (startroomanimationtimer4 / 100));
		draw_sprite_ext(spr_wasd, 0, 3 * room_width / 4 , room_height - 200, 3, 3, 1, c_white, 1 - (startroomanimationtimer4 / 100));
		draw_sprite_ext(spr_gf, 1, 3 * room_width / 4 - 48 - 36, room_height - 200 + 16, 3, 3, 1, c_white, 1 - (startroomanimationtimer4 / 100));
		draw_sprite_ext(spr_gf, 0, 3 * room_width / 4 - 104 - 36, room_height - 200 + 16, 3, 3, 1, c_white, 1 - (startroomanimationtimer4 / 100));
	}
	if (startroomanimationtimer4 == -1) && (enterblinktimer > 0) {
		draw_sprite_ext(spr_text, 25, room_width / 2 - 144, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		draw_sprite_ext(spr_text, 27, room_width / 2 - 120, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		draw_sprite_ext(spr_text, 14, room_width / 2 - 96, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		draw_sprite_ext(spr_text, 28, room_width / 2 - 72, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		draw_sprite_ext(spr_text, 28, room_width / 2 - 48, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		
		draw_sprite_ext(spr_text, 14, room_width / 2 - 12 + 24 * 2, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		draw_sprite_ext(spr_text, 23, room_width / 2 - 12 + 24 * 3, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		draw_sprite_ext(spr_text, 29, room_width / 2 - 12 + 24 * 4, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		draw_sprite_ext(spr_text, 14, room_width / 2 - 12 + 24 * 5, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
		draw_sprite_ext(spr_text, 27, room_width / 2 - 12 + 24 * 6, room_height / 2 + 72, 3, 3, 1, c_white, 1);	
	}
	
}
cxx = camera_get_view_x(view_camera[1]);
cyy = camera_get_view_y(view_camera[1]);
cww = camera_get_view_width(view_camera[1]);

cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
cw = camera_get_view_width(view_camera[0]);

//draw_text(10, 100, escapetimer);
if (room == menu) {
	draw_sprite_ext(spr_text, 12, 8 * 32, 2 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 17, 9 * 32, 2 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 24, 10 * 32, 2 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 24, 11 * 32, 2 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 28, 12 * 32, 2 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 14, 13 * 32, 2 * 32, 4, 4, 1, c_white, 1);
	
	draw_sprite_ext(spr_text, 12, 15 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 17, 16 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 10, 17 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 27, 18 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 10, 19 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 12, 20 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 29, 21 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 14, 22 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	draw_sprite_ext(spr_text, 27, 23 * 32, 3 * 32, 4, 4, 1, c_white, 1);
	
	if (p1character != 0) && (p2character != 0) {
		if ((blinktimer mod 20) == 0) || (((blinktimer - 1) mod 20) == 0) || (((blinktimer - 2) mod 20) == 0) || (((blinktimer - 3) mod 20) == 0) || (((blinktimer - 4) mod 20) == 0) || (((blinktimer - 5) mod 20) == 0){
		//off
	} else {
		//on
		draw_sprite_ext(spr_text, 27, 13 * 32, 12 * 32, 4, 4, 1, c_white, 1);
		draw_sprite_ext(spr_text, 14, 14 * 32, 12 * 32, 4, 4, 1, c_white, 1);
		draw_sprite_ext(spr_text, 10, 15 * 32, 12 * 32, 4, 4, 1, c_white, 1);
		draw_sprite_ext(spr_text, 13, 16 * 32, 12 * 32, 4, 4, 1, c_white, 1);
		draw_sprite_ext(spr_text, 34, 17 * 32, 12 * 32, 4, 4, 1, c_white, 1);
	}
	}
} else {
	if (room != mapmenu) && (room != startmenu){
		if (startingframes < starttime) {
			if (room == battleroom) || (room == flashroom) || (room == bubbleroom) || (room == elecroom) || (room == gutsroom) || (room == shadowroom) || (room == highwayroom){
				if ((startingframes mod 20) == 0) || (((startingframes - 1) mod 20) == 0) || (((startingframes - 2) mod 20) == 0) || (((startingframes - 3) mod 20) == 0) || (((startingframes - 4) mod 20) == 0) || (((startingframes - 5) mod 20) == 0){
					//off
				} else {
					//on
					draw_sprite_ext(spr_text, 27, 29 * 16, 17 * 16, 2, 2, 1, c_white, 1);
					draw_sprite_ext(spr_text, 14, 30 * 16, 17 * 16, 2, 2, 1, c_white, 1);
					draw_sprite_ext(spr_text, 10, 31 * 16, 17 * 16, 2, 2, 1, c_white, 1);
					draw_sprite_ext(spr_text, 13, 32 * 16, 17 * 16, 2, 2, 1, c_white, 1);
					draw_sprite_ext(spr_text, 34, 33 * 16, 17 * 16, 2, 2, 1, c_white, 1);
				}
	
			}
		}



		if (startingframes >= starttime) {
			if (room == battleroom) || (room == flashroom) || (room == bubbleroom) || (room == elecroom) || (room == gutsroom) || (room == shadowroom) || (room == highwayroom){
				
				if (instance_exists(p1)) && (p1 != -1) && (p1 != 0) { 
					draw_sprite_ext(spr_healthbar, 0, 50, 10, 0.35, 0.35, 0, c_white, 1);
					draw_sprite_ext(spr_portraitborder, 0, 0, 5, 1, 1, 0, c_white, 1);
					switch (p1character) {
						case 1:
							draw_sprite_ext(spr_megamugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 2:
							draw_sprite_ext(spr_metalmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 3:
							draw_sprite_ext(spr_protomugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 4:
							draw_sprite_ext(spr_quickmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 5:
							draw_sprite_ext(spr_zeromugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 6:
							draw_sprite_ext(spr_cutmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 7:
							draw_sprite_ext(spr_skullmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 8:
							draw_sprite_ext(spr_snakemugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 9: 
							draw_sprite_ext(spr_rollmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 10:
							draw_sprite_ext(spr_bassmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 11: 
							draw_sprite_ext(spr_ringmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 12:
							draw_sprite_ext(spr_geminimugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 13:
							draw_sprite_ext(spr_chillmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 14:
							draw_sprite_ext(spr_codamugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 15:
							draw_sprite_ext(spr_elecmugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						case 16:	
							draw_sprite_ext(spr_firemugshot, 0, 6, 11, 1, 1, 0, c_white, 1);
							break;
						}
					for (var i = p1.hhealth; i > 0; i--) {
						draw_sprite_ext(spr_bar, 0, 57, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
					}
					if (p1character != 5) && (p1character != 6) {
						draw_sprite_ext(spr_healthbar, 0, 71, 10, 0.35, 0.35, 0, c_white, 1);
						for (var i = p1.currentammo / 4; i > 0; i--) {
							switch (p1character) {
								case 1:
									draw_sprite_ext(spr_barblue, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 2:
									draw_sprite_ext(spr_bargrey, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 3:
									draw_sprite_ext(spr_barred, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 4:
									draw_sprite_ext(spr_barpink, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 7:
									draw_sprite_ext(spr_barblack, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 8:
									draw_sprite_ext(spr_bargreen, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 9:
									draw_sprite_ext(spr_bardarkred, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 10:
									draw_sprite_ext(spr_barpurple, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 11: 
									draw_sprite_ext(spr_barorange, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 12: 
									draw_sprite_ext(spr_barlightblue, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 13: 
									draw_sprite_ext(spr_barchillblue, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 14:
									draw_sprite_ext(spr_barcoda, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 15:
									draw_sprite_ext(spr_barelec, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 16:
									draw_sprite_ext(spr_barfire, 0, 78, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
							}
						}	
					}
				}
				if (instance_exists(p2)) && (p2 != -1) && (p2 != 0) {
					draw_sprite_ext(spr_healthbar, 0, 945, 10, 0.35, 0.35, 0, c_white, 1);
					draw_sprite_ext(spr_portraitborder, 0, 980, 5, 1, 1, 0, c_white, 1);
					switch (p2character) {
						case 1:
							draw_sprite_ext(spr_megamugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 2:
							draw_sprite_ext(spr_metalmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 3: 
							draw_sprite_ext(spr_protomugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 4:
							draw_sprite_ext(spr_quickmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 5:
							draw_sprite_ext(spr_zeromugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 6:
							draw_sprite_ext(spr_cutmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 7:
							draw_sprite_ext(spr_skullmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 8:
							draw_sprite_ext(spr_snakemugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 9: 
							draw_sprite_ext(spr_rollmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 10: 
							draw_sprite_ext(spr_bassmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 11:
							draw_sprite_ext(spr_ringmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 12:
							draw_sprite_ext(spr_geminimugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 13:
							draw_sprite_ext(spr_chillmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 14:
							draw_sprite_ext(spr_codamugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 15:
							draw_sprite_ext(spr_elecmugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
						case 16:
							draw_sprite_ext(spr_firemugshot, 0, 986, 11, 1, 1, 0, c_white, 1);
							break;
					}
					for (var i = p2.hhealth; i > 0; i--) {
						draw_sprite_ext(spr_bar, 0, 952, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
					}
					if (p2character != 5) && (p2character != 6){
						draw_sprite_ext(spr_healthbar, 0, 965, 10, 0.35, 0.35, 0, c_white, 1);	
						for (var i = p2.currentammo / 4; i > 0; i--) {
							switch (p2character) {
								case 1:
									draw_sprite_ext(spr_barblue, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 2:
									draw_sprite_ext(spr_bargrey, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 3:
									draw_sprite_ext(spr_barred, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 4:
									draw_sprite_ext(spr_barpink, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 7:
									draw_sprite_ext(spr_barblack, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 8:
									draw_sprite_ext(spr_bargreen, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 9:
									draw_sprite_ext(spr_bardarkred, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 10:
									draw_sprite_ext(spr_barpurple, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 11:
									draw_sprite_ext(spr_barorange, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 12:
									draw_sprite_ext(spr_barlightblue, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 13:
									draw_sprite_ext(spr_barchillblue, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 14:
									draw_sprite_ext(spr_barcoda, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 15:
									draw_sprite_ext(spr_barelec, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
								case 16:
									draw_sprite_ext(spr_barfire, 0, 972, (104) - (i * 4), 0.35, 0.35, 0, c_white, 1);
									break;
							}
						}
					}
				}
			}
		}
	}
}