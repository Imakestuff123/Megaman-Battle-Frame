function scr_createplayer(argument0, argument1, argument2, argument3) {
	with (obj_management) {
		switch (argument0) {
			case 1: 
				p1 = instance_create_layer(16 * argument2, 16 * argument3, "Instances", obj_player);
				if (room == menu) {
					p1.marker = other.id;
				}
				p1.clone = 0;
				p1.parent = 0;
				p1.player = argument0;
				p1.character = argument1;
				p1.playernumber = 1;
				switch (p1.player) {
					case 1:
						p1.buttonmoveright = vk_right;
						p1.buttonmoveleft = vk_left;
						p1.buttonjump = ord("J");
						p1.buttonshoot = ord("K");
						p1.buttondown = vk_down;
						p1.buttonup = vk_up;
						break;
					case 2:
						p1.buttonmoveright = ord("D");
						p1.buttonmoveleft = ord("A");
						p1.buttonjump = ord("G");
						p1.buttonshoot = ord("F");
						p1.buttondown = ord("S");
						p1.buttonup = ord("W");
						break;
				}

				switch (p1.character) {
					case 1:
						p1.damagemultiplyer = 1;
						p1.maxbullets = 3;
						p1.reloadtime = 5;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_idleright;
						p1.idleanimationrightcharge = spr_idlerightcharge;
						p1.idleanimationrightcharge1 = spr_idlerightcharge1;
						p1.hurtanimationright = spr_hurtright;
						p1.stillattackright = spr_gunright;
						p1.stillattackrightcharge = spr_gunrightcharge;
						p1.stillattackrightcharge1 = spr_gunrightcharge1;
						p1.movingattackright = spr_rungunright;
						p1.movingattackrightcharge = spr_rungunrightcharge;
						p1.movingattackrightcharge1 = spr_rungunrightcharge1;
						p1.moveright = spr_runright;
						p1.moverightcharge = spr_runrightcharge;
						p1.moverightcharge1 = spr_runrightcharge1;
						p1.jumpgunright = spr_jumpgunright;
						p1.jumpgunrightcharge = spr_jumpgunrightcharge;
						p1.jumpgunrightcharge1 = spr_jumpgunrightcharge1;
						p1.jumpright = spr_jumpright;
						p1.jumprightcharge = spr_jumprightcharge;
						p1.jumprightcharge1 = spr_jumprightcharge1;
						p1.slideright = spr_megaslideright;
						p1.jumpright2 = 0;
						break;
					case 2:
						p1.damagemultiplyer = 1.2;
						p1.maxbullets = 2;
						p1.reloadtime = 25;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2.1;
						p1.idleanimationright = spr_metalstillright;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_throwright;
						p1.movingattackright = 0;
						p1.moveright = spr_metalrunright;
						p1.jumpgunright = spr_throwairright;
						p1.jumpright = spr_metaljumpright;
						p1.slideright = 0;
						p1.jumpright2 = 0;
						break;
					case 3:
						p1.damagemultiplyer = 1.5;
						p1.maxbullets = 3;
						p1.reloadtime = 10;
						p1.grav = 0.3;
						p1.jumpspeed = 9;
						p1.movespeed = 2;
						p1.idleanimationright = spr_protostillright;
						p1.idleanimationrightcharge = spr_protostillrightcharge;
						p1.idleanimationrightcharge1 = spr_protostillrightcharge1;
						p1.stillattackrightcharge = spr_protogunrightcharge;
						p1.stillattackrightcharge1 = spr_protogunrightcharge1;
						p1.movingattackrightcharge = 0;
						p1.movingattackrightcharge1 = 0;
						p1.jumpgunrightcharge = spr_protojumpgunrightcharge;
						p1.jumpgunrightcharge1 = spr_protojumpgunrightcharge1;
						p1.jumprightcharge = spr_protojumprightcharge;
						p1.jumprightcharge1 = spr_protojumprightcharge1;
						p1.moverightcharge = spr_protorunrightcharge;
						p1.moverightcharge1 = spr_protorunrightcharge1;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_protogunright;
						p1.movingattackright = 0;
						p1.moveright = spr_protorunright;
						p1.jumpgunright = spr_protojumpgunright;
						p1.jumpright = spr_protojumpright;
						p1.slideright = spr_protoslideright;
						p1.jumpright2 = 0;
						shield = instance_create_layer(x, y, "Instances", obj_protoshield);
						shield.player = p1.id;
						p1.shield = shield;
				
						break;
					case 4:
						p1.damagemultiplyer = 1.3;
						p1.maxbullets = 2;
						p1.reloadtime = 10;
						p1.grav = 0.3;
						p1.jumpspeed = 10;
						p1.movespeed = 3.5;
						p1.idleanimationright = spr_quickstillright;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_quickthrowright;
						p1.movingattackright = 0;
						p1.moveright = spr_quickrunright;
						p1.jumpgunright = spr_quickjumpthrowright;
						p1.jumpright = spr_quickjumpright;
						p1.slideright = 0;
						p1.jumpright2 = 0;
						break;
					case 5:
						p1.damagemultiplyer = 0.8;
						p1.maxbullets = 5;
						p1.reloadtime = 45;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_zeroidleright;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_zerosliceright;
						p1.movingattackright = 0;
						p1.moveright = spr_zerorunright;
						p1.jumpgunright = spr_zerosliceairright;
						p1.jumpright = spr_zerojumpright;
						p1.slideright = spr_zeroslideright;
						p1.jumpright2 = 0;
						break;
					case 6:
						p1.damagemultiplyer = 1;
						p1.maxbullets = 1;
						p1.reloadtime = 180;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2.35;
						p1.idleanimationright = spr_cutbladeidleright;
						p1.idleanimationright2 = spr_cutidleright;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_cutbladethrowright;
						p1.movingattackright = 0;
						p1.moveright = spr_cutbladerunright;
						p1.moveright2 = spr_cutrunright;
						p1.jumpgunright = 0;
						p1.jumpright = spr_cutbladejumpright;
						p1.jumpright2 = spr_cutjumpright;
						p1.slideright = 0;
						break;
					case 7:
						p1.damagemultiplyer = 0.9;
						p1.maxbullets = 2;
						p1.reloadtime = 5;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_skullidleright;
						p1.idleanimationrightcharge = spr_skullidlerightcharge;
						p1.idleanimationrightcharge1 = spr_skullidlerightcharge1;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_skullidleshootright;
						p1.stillattackrightcharge = spr_skullidleshootrightcharge;
						p1.stillattackrightcharge1 = spr_skullidleshootrightcharge1;
						p1.movingattackright = 0;
						p1.movingattackrightcharge = 0;
						p1.movingattackrightcharge1 = 0;
						p1.moveright = spr_skullrunright;
						p1.moverightcharge = spr_skullrunrightcharge;
						p1.moverightcharge1 = spr_skullrunrightcharge1;
						p1.jumpgunright = 0;
						p1.jumpgunrightcharge = 0;
						p1.jumpgunrightcharge1 = 0;
						p1.jumpright = spr_skulljumpright;
						p1.jumprightcharge = spr_skulljumprightcharge;
						p1.jumprightcharge1 = spr_skulljumprightcharge1;
						p1.slideright = 0;
						p1.jumpright2 = 0;
						break;
					case 8:
						p1.damagemultiplyer = 0.9;
						p1.maxbullets = 5;
						p1.reloadtime = 25;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2.25;
						p1.idleanimationright = spr_snakeidleright;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_snakeshootright;
						p1.movingattackright = 0;
						p1.moveright = spr_snakerunright;
						p1.jumpgunright = spr_snakeairshootright;
						p1.jumpright = spr_snakejumpright;
						p1.slideright = 0;
						p1.jumpright2 = 0;
						break;
					case 9:
						p1.damagemultiplyer = 1;
						p1.maxbullets = 4;
						p1.reloadtime = 5;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2.2;
						p1.idleanimationright = spr_rollidleright;
						p1.idleanimationrightcharge = spr_rollidlerightcharge;
						p1.idleanimationrightcharge1 = spr_rollidlerightcharge1;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_rollstillshootright;
						p1.stillattackrightcharge = spr_rollstillshootrightcharge;
						p1.stillattackrightcharge1 = spr_rollstillshootrightcharge1;
						p1.movingattackright = spr_rollrungunright;
						p1.movingattackrightcharge = spr_rollrungunrightcharge;
						p1.movingattackrightcharge1 = spr_rollrungunrightcharge1;
						p1.moveright = spr_rollrunright;
						p1.moverightcharge = spr_rollrunrightcharge;
						p1.moverightcharge1 = spr_rollrunrightcharge1;
						p1.jumpgunright = spr_rolljumpshootright;
						p1.jumpgunrightcharge = spr_rolljumpshootrightcharge;
						p1.jumpgunrightcharge1 = spr_rolljumpshootrightcharge1;
						p1.jumpright = spr_rolljumpright;
						p1.jumprightcharge = spr_rolljumprightcharge;
						p1.jumprightcharge1 = spr_rolljumprightcharge1;
						p1.slideright = spr_rollslideright;
						p1.jumpright2 = 0;
						break;
					case 10:
						p1.damagemultiplyer = 1.2;
						p1.maxbullets = 4;
						p1.reloadtime = 3;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_bassidleright;
						p1.idleanimationrightcharge = spr_bassidlerightcharge;
						p1.idleanimationrightcharge1 = spr_bassidlerightcharge1;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_bassidleshootright;
						p1.stillattackrightcharge = spr_bassidleshootrightcharge;
						p1.stillattackrightcharge1 = spr_bassidleshootrightcharge1;
						p1.movingattackright = spr_bassrunshootright;
						p1.movingattackrightcharge = spr_bassrunshootrightcharge;
						p1.movingattackrightcharge1 = spr_bassrunshootrightcharge1;
						p1.moveright = spr_bassrunright;
						p1.moverightcharge = spr_bassrunrightcharge;
						p1.moverightcharge1 = spr_bassrunrightcharge1;
						p1.jumpgunright = spr_bassjumpshootright;
						p1.jumpgunrightcharge = spr_bassjumpshootrightcharge;
						p1.jumpgunrightcharge1 = spr_bassjumpshootrightcharge1;
						p1.jumpright = spr_bassjumpright;
						p1.jumprightcharge = spr_bassjumprightcharge;
						p1.jumprightcharge1 = spr_bassjumprightcharge1;
						p1.slideright = spr_bassslideright;
						p1.currentattack = 0;
						p1.stillattackrightup = spr_bassshoottopright;
						p1.stillattackrightdown = spr_bassshootdownright;
						p1.stillattackupfaceright = spr_bassshoottopfaceright;
						p1.jumpattackrightup = spr_bassjumpshootupright;
						p1.jumpattackrightdown = spr_bassjumpshootdownright;
						p1.jumpattackupfaceright = spr_bassjumpshootupfaceright;
						p1.jumpright2 = 0;
						break;
					case 11: 
						p1.damagemultiplyer = 1;
						p1.maxbullets = 1;
						p1.reloadtime = 5;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_ringidleright;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_ringthrowright;
						p1.moveright = spr_ringrunright;
						p1.jumpgunright = spr_ringjumpthrowright;
						p1.jumpright = spr_ringjumpright;
						p1.idleanimationrightcharge = spr_ringidlerightcharge;
						p1.idleanimationrightcharge1 = spr_ringidlerightcharge1;
						p1.stillattackrightcharge = spr_ringjumpthrowright;
						p1.stillattackright = 0;
						p1.stillattackrightcharge1 = 0;
						p1.movingattackrightcharge = 0;
						p1.movingattackrightcharge1 = 0;
						p1.jumpgunrightcharge = spr_ringjumpthrowright;
						p1.jumpgunrightcharge1 = spr_ringjumpthrowright;
						p1.jumprightcharge = spr_ringjumprightcharge;
						p1.jumprightcharge1 = spr_ringjumprightcharge1;
						p1.moverightcharge = spr_ringrunrightcharge;
						p1.moverightcharge1 = spr_ringrunrightcharge1;
						break;
					case 12:
						p1.damagemultiplyer = 1.1;
						p1.maxbullets = 3;
						p1.reloadtime = 5;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_geminiidleright;
						p1.idleanimationrightcharge = spr_geminiidlerightcharge;
						p1.idleanimationrightcharge1 = spr_geminiidlerightcharge1;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_geminishootright;
						p1.stillattackrightcharge = spr_geminishootrightcharge;
						p1.stillattackrightcharge1 = spr_geminishootrightcharge1;
						p1.movingattackright = 0;
						p1.movingattackrightcharge = 0;
						p1.movingattackrightcharge1 = 0;
						p1.moveright = spr_geminirunright;
						p1.moverightcharge = spr_geminirunrightcharge;
						p1.moverightcharge1 = spr_geminirunrightcharge1;
						p1.jumpgunright = 0;
						p1.jumpgunrightcharge = 0;
						p1.jumpgunrightcharge1 = 0;
						p1.jumpright = spr_geminijumpright;
						p1.jumprightcharge = spr_geminijumprightcharge;
						p1.jumprightcharge1 = spr_geminijumprightcharge1;
						break;
					case 13:
						p1.damagemultiplyer = 1;
						p1.maxbullets = 3;
						p1.reloadtime = 20;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_chillidleright;
						p1.idleanimationrightcharge = spr_chillidlerightcharge;
						p1.idleanimationrightcharge1 = spr_chillidlerightcharge1;
						p1.hurtanimationright = 0;
						p1.stillattackright = spr_chillshootright;
						p1.stillattackrightcharge = spr_chillshootrightcharge;
						p1.stillattackrightcharge1 = spr_chillshootrightcharge1;
						p1.movingattackright = 0;
						p1.movingattackrightcharge = 0;
						p1.movingattackrightcharge1 = 0;
						p1.moveright = spr_chillrunright;
						p1.moverightcharge = spr_chillrunrightcharge;
						p1.moverightcharge1 = spr_chillrunrightcharge1;
						p1.jumpgunright = 0;
						p1.jumpgunrightcharge = 0 ;
						p1.jumpgunrightcharge1 = 0;
						p1.jumpright = spr_chilljumpright;
						p1.jumprightcharge = spr_chilljumprightcharge;
						p1.jumprightcharge1 = spr_chilljumprightcharge1;
						break;
					case 14:
						p1.damagemultiplyer = 1;
						p1.maxbullets = 3;
						p1.reloadtime = 5;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_codaidleright;
						p1.idleanimationrightcharge = spr_codaidlerightcharge;
						p1.idleanimationrightcharge1 = spr_codaidlerightcharge1;
						//p1.hurtanimationright = spr_hurtright;
						p1.stillattackright = spr_codaidleshootright;
						p1.stillattackrightcharge = spr_codaidleshootrightcharge;
						p1.stillattackrightcharge1 = spr_codaidleshootrightcharge1;
						p1.movingattackright = spr_codarungunright;
						p1.movingattackrightcharge = spr_codarungunrightcharge;
						p1.movingattackrightcharge1 = spr_codarungunrightcharge1;
						p1.moveright = spr_codarunright;
						p1.moverightcharge = spr_codarunrightcharge;
						p1.moverightcharge1 = spr_codarunrightcharge1;
						p1.jumpgunright = spr_codajumpshootright;
						p1.jumpgunrightcharge = spr_codajumpshootrightcharge;
						p1.jumpgunrightcharge1 = spr_codajumpshootrightcharge1;
						p1.jumpright = spr_codajumpright;
						p1.jumprightcharge = spr_codajumprightcharge;
						p1.jumprightcharge1 = spr_codajumprightcharge1;
						p1.slideright = spr_codaslideright;
						break;
					case 15:
						p1.damagemultiplyer = 1;
						p1.maxbullets = 3;
						p1.reloadtime = 30;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_elecidleright;
						p1.idleanimationrightcharge = spr_elecidlerightcharge;
						p1.idleanimationrightcharge1 = spr_elecidlerightcharge1;
						//p1.hurtanimationright = spr_hurtright;
						p1.stillattackright = spr_elecshootright;
						p1.stillattackrightcharge = spr_elecshootrightcharge;
						p1.stillattackrightcharge1 = spr_elecshootrightcharge1;
						p1.moveright = spr_elecrunright;
						p1.moverightcharge = spr_elecrunrightcharge;
						p1.moverightcharge1 = spr_elecrunrightcharge1;
						p1.jumpright = spr_elecjumpright;
						p1.jumprightcharge = spr_elecjumprightcharge;
						p1.jumprightcharge1 = spr_elecjumprightcharge1;
						break;
					case 16:
						p1.damagemultiplyer = 1;
						p1.maxbullets = 3;
						p1.reloadtime = 30;
						p1.grav = 0.3;
						p1.jumpspeed = 8;
						p1.movespeed = 2;
						p1.idleanimationright = spr_fireidleright;
						p1.idleanimationrightcharge = spr_fireidlerightcharge;
						p1.idleanimationrightcharge1 = spr_fireidlerightcharge1;
						//p1.hurtanimationright = spr_hurtright;
						p1.stillattackright = spr_fireshootright;
						p1.stillattackrightcharge = spr_fireshootrightcharge;
						p1.stillattackrightcharge1 = spr_fireshootrightcharge1;
						p1.moveright = spr_firerunright;
						p1.moverightcharge = spr_firerunrightcharge;
						p1.moverightcharge1 = spr_firerunrightcharge1;
						p1.jumpright = spr_firejumpright;
						p1.jumprightcharge = spr_firejumprightcharge;
						p1.jumprightcharge1 = spr_firejumprightcharge1;
						break;
				}
			if (p1.character != 1) && (p1.character != 3) && (p1.character != 5) && (p1.character != 9) && (p1.character != 10) && (p1.character != 14) {
				p1.slideright = 0;
			}
			if (p1.character != 6) {
				p1.jumpright2 = 0;
			}
			if (p1.character == 6) || (p1.character == 7) || (p1.character == 12) || (p1.character == 13) || (p1.character == 15) || (p1.character == 16) {
				p1.jumpgunright = 0;
				p1.jumpgunrightcharge = 0;
				p1.jumpgunrightcharge1 = 0;
			}
			if (p1.character != 1) && (p1.character != 3) && (p1.character != 7) && (p1.character != 9) && (p1.character != 10) && (p1.character != 11) && (p1.character != 12) && (p1.character != 13) && (p1.character != 14) && (p1.character != 15) && (p1.character != 16){
				p1.idleanimationrightcharge = 0;
				p1.idleanimationrightcharge1 = 0;
				p1.stillattackrightcharge = 0;
				p1.stillattackrightcharge1 = 0;
				p1.movingattackrightcharge = 0;
				p1.movingattackrightcharge1 = 0;
				p1.jumpgunrightcharge = 0;
				p1.jumpgunrightcharge1 = 0;
				p1.jumprightcharge = 0;
				p1.jumprightcharge1 = 0;
				p1.moverightcharge = 0;
				p1.moverightcharge1 = 0;
			}
			break;
			case 2: 
				p2 = instance_create_layer(16 * argument2, 16 * argument3, "Instances", obj_player);
				if (room == menu) {
					p2.marker = other.id;
				}
				p2.clone = 0;
				p2.parent = 0;
				p2.player = argument0;
				p2.character = argument1;
				p2.playernumber = 2;
				switch (p2.player) {
					case 1:
						p2.buttonmoveright = vk_right;
						p2.buttonmoveleft = vk_left;
						p2.buttonjump = ord("J");
						p2.buttonshoot = ord("K");
						p2.buttondown = vk_down;
						p2.buttonup = vk_up;
						break;
					case 2:
						p2.buttonmoveright = ord("D");
						p2.buttonmoveleft = ord("A");
						p2.buttonjump = ord("G");
						p2.buttonshoot = ord("F");
						p2.buttondown = ord("S");
						p2.buttonup = ord("W");
						break;
				}

				switch (p2.character) {
					case 1:
						p2.damagemultiplyer = 1;
						p2.maxbullets = 3;
						p2.reloadtime = 5;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_idleright;
						p2.idleanimationrightcharge = spr_idlerightcharge;
						p2.idleanimationrightcharge1 = spr_idlerightcharge1;
						p2.hurtanimationright = spr_hurtright;
						p2.stillattackright = spr_gunright;
						p2.stillattackrightcharge = spr_gunrightcharge;
						p2.stillattackrightcharge1 = spr_gunrightcharge1;
						p2.movingattackright = spr_rungunright;
						p2.movingattackrightcharge = spr_rungunrightcharge;
						p2.movingattackrightcharge1 = spr_rungunrightcharge1;
						p2.moveright = spr_runright;
						p2.moverightcharge = spr_runrightcharge;
						p2.moverightcharge1 = spr_runrightcharge1;
						p2.jumpgunright = spr_jumpgunright;
						p2.jumpgunrightcharge = spr_jumpgunrightcharge;
						p2.jumpgunrightcharge1 = spr_jumpgunrightcharge1;
						p2.jumpright = spr_jumpright;
						p2.jumprightcharge = spr_jumprightcharge;
						p2.jumprightcharge1 = spr_jumprightcharge1;
						p2.slideright = spr_megaslideright;
						p2.jumpright2 = 0;
						break;
					case 2:
						p2.damagemultiplyer = 1.2;
						p2.maxbullets = 2;
						p2.reloadtime = 25;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2.1;
						p2.idleanimationright = spr_metalstillright;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_throwright;
						p2.movingattackright = 0;
						p2.moveright = spr_metalrunright;
						p2.jumpgunright = spr_throwairright;
						p2.jumpright = spr_metaljumpright;
						p2.slideright = 0;
						p2.jumpright2 = 0;
						break;
					case 3:
						p2.damagemultiplyer = 1.5;
						p2.maxbullets = 3;
						p2.reloadtime = 10;
						p2.grav = 0.3;
						p2.jumpspeed = 9;
						p2.movespeed = 2;
						p2.idleanimationright = spr_protostillright;
						p2.idleanimationrightcharge = spr_protostillrightcharge;
						p2.idleanimationrightcharge1 = spr_protostillrightcharge1;
						p2.stillattackrightcharge = spr_protogunrightcharge;
						p2.stillattackrightcharge1 = spr_protogunrightcharge1;
						p2.movingattackrightcharge = 0;
						p2.movingattackrightcharge1 = 0;
						p2.jumpgunrightcharge = spr_protojumpgunrightcharge;
						p2.jumpgunrightcharge1 = spr_protojumpgunrightcharge1;
						p2.jumprightcharge = spr_protojumprightcharge;
						p2.jumprightcharge1 = spr_protojumprightcharge1;
						p2.moverightcharge = spr_protorunrightcharge;
						p2.moverightcharge1 = spr_protorunrightcharge1;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_protogunright;
						p2.movingattackright = 0;
						p2.moveright = spr_protorunright;
						p2.jumpgunright = spr_protojumpgunright;
						p2.jumpright = spr_protojumpright;
						p2.slideright = spr_protoslideright;
						p2.jumpright2 = 0;
						shield = instance_create_layer(x, y, "Instances", obj_protoshield);
						shield.player = p2.id;
						p2.shield = shield;
				
						break;
					case 4:
						p2.damagemultiplyer = 1.3;
						p2.maxbullets = 2;
						p2.reloadtime = 10;
						p2.grav = 0.3;
						p2.jumpspeed = 10;
						p2.movespeed = 3.5;
						p2.idleanimationright = spr_quickstillright;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_quickthrowright;
						p2.movingattackright = 0;
						p2.moveright = spr_quickrunright;
						p2.jumpgunright = spr_quickjumpthrowright;
						p2.jumpright = spr_quickjumpright;
						p2.slideright = 0;
						p2.jumpright2 = 0;
						break;
					case 5:
						p2.damagemultiplyer = 0.8;
						p2.maxbullets = 5;
						p2.reloadtime = 45;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_zeroidleright;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_zerosliceright;
						p2.movingattackright = 0;
						p2.moveright = spr_zerorunright;
						p2.jumpgunright = spr_zerosliceairright;
						p2.jumpright = spr_zerojumpright;
						p2.slideright = spr_zeroslideright;
						p2.jumpright2 = 0;
						break;
					case 6:
						p2.damagemultiplyer = 1;
						p2.maxbullets = 1;
						p2.reloadtime = 180;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2.35;
						p2.idleanimationright = spr_cutbladeidleright;
						p2.idleanimationright2 = spr_cutidleright;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_cutbladethrowright;
						p2.movingattackright = 0;
						p2.moveright = spr_cutbladerunright;
						p2.moveright2 = spr_cutrunright;
						p2.jumpgunright = 0;
						p2.jumpright = spr_cutbladejumpright;
						p2.jumpright2 = spr_cutjumpright;
						p2.slideright = 0;
						break;
					case 7:
						p2.damagemultiplyer = 0.9;
						p2.maxbullets = 2;
						p2.reloadtime = 5;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_skullidleright;
						p2.idleanimationrightcharge = spr_skullidlerightcharge;
						p2.idleanimationrightcharge1 = spr_skullidlerightcharge1;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_skullidleshootright;
						p2.stillattackrightcharge = spr_skullidleshootrightcharge;
						p2.stillattackrightcharge1 = spr_skullidleshootrightcharge1;
						p2.movingattackright = 0;
						p2.movingattackrightcharge = 0;
						p2.movingattackrightcharge1 = 0;
						p2.moveright = spr_skullrunright;
						p2.moverightcharge = spr_skullrunrightcharge;
						p2.moverightcharge1 = spr_skullrunrightcharge1;
						p2.jumpgunright = 0;
						p2.jumpgunrightcharge = 0;
						p2.jumpgunrightcharge1 = 0;
						p2.jumpright = spr_skulljumpright;
						p2.jumprightcharge = spr_skulljumprightcharge;
						p2.jumprightcharge1 = spr_skulljumprightcharge1;
						p2.slideright = 0;
						p2.jumpright2 = 0;
						break;
					case 8:
						p2.damagemultiplyer = 0.9;
						p2.maxbullets = 5;
						p2.reloadtime = 25;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2.25;
						p2.idleanimationright = spr_snakeidleright;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_snakeshootright;
						p2.movingattackright = 0;
						p2.moveright = spr_snakerunright;
						p2.jumpgunright = spr_snakeairshootright;
						p2.jumpright = spr_snakejumpright;
						p2.slideright = 0;
						p2.jumpright2 = 0;
						break;
					case 9:
						p2.damagemultiplyer = 1;
						p2.maxbullets = 4;
						p2.reloadtime = 5;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2.2;
						p2.idleanimationright = spr_rollidleright;
						p2.idleanimationrightcharge = spr_rollidlerightcharge;
						p2.idleanimationrightcharge1 = spr_rollidlerightcharge1;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_rollstillshootright;
						p2.stillattackrightcharge = spr_rollstillshootrightcharge;
						p2.stillattackrightcharge1 = spr_rollstillshootrightcharge1;
						p2.movingattackright = spr_rollrungunright;
						p2.movingattackrightcharge = spr_rollrungunrightcharge;
						p2.movingattackrightcharge1 = spr_rollrungunrightcharge1;
						p2.moveright = spr_rollrunright;
						p2.moverightcharge = spr_rollrunrightcharge;
						p2.moverightcharge1 = spr_rollrunrightcharge1;
						p2.jumpgunright = spr_rolljumpshootright;
						p2.jumpgunrightcharge = spr_rolljumpshootrightcharge;
						p2.jumpgunrightcharge1 = spr_rolljumpshootrightcharge1;
						p2.jumpright = spr_rolljumpright;
						p2.jumprightcharge = spr_rolljumprightcharge;
						p2.jumprightcharge1 = spr_rolljumprightcharge1;
						p2.slideright = spr_rollslideright;
						p2.jumpright2 = 0;
						break;
					case 10:
						p2.damagemultiplyer = 1.2;
						p2.maxbullets = 4;
						p2.reloadtime = 3;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_bassidleright;
						p2.idleanimationrightcharge = spr_bassidlerightcharge;
						p2.idleanimationrightcharge1 = spr_bassidlerightcharge1;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_bassidleshootright;
						p2.stillattackrightcharge = spr_bassidleshootrightcharge;
						p2.stillattackrightcharge1 = spr_bassidleshootrightcharge1;
						p2.movingattackright = spr_bassrunshootright;
						p2.movingattackrightcharge = spr_bassrunshootrightcharge;
						p2.movingattackrightcharge1 = spr_bassrunshootrightcharge1;
						p2.moveright = spr_bassrunright;
						p2.moverightcharge = spr_bassrunrightcharge;
						p2.moverightcharge1 = spr_bassrunrightcharge1;
						p2.jumpgunright = spr_bassjumpshootright;
						p2.jumpgunrightcharge = spr_bassjumpshootrightcharge;
						p2.jumpgunrightcharge1 = spr_bassjumpshootrightcharge1;
						p2.jumpright = spr_bassjumpright;
						p2.jumprightcharge = spr_bassjumprightcharge;
						p2.jumprightcharge1 = spr_bassjumprightcharge1;
						p2.slideright = spr_bassslideright;
						p2.currentattack = 0;
						p2.stillattackrightup = spr_bassshoottopright;
						p2.stillattackrightdown = spr_bassshootdownright;
						p2.stillattackupfaceright = spr_bassshoottopfaceright;
						p2.jumpattackrightup = spr_bassjumpshootupright;
						p2.jumpattackrightdown = spr_bassjumpshootdownright;
						p2.jumpattackupfaceright = spr_bassjumpshootupfaceright;
						p2.jumpright2 = 0;
						break;
					case 11: 
						p2.damagemultiplyer = 1;
						p2.maxbullets = 1;
						p2.reloadtime = 5;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_ringidleright;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_ringthrowright;
						p2.moveright = spr_ringrunright;
						p2.jumpgunright = spr_ringjumpthrowright;
						p2.jumpright = spr_ringjumpright;
						p2.idleanimationrightcharge = spr_ringidlerightcharge;
						p2.idleanimationrightcharge1 = spr_ringidlerightcharge1;
						p2.stillattackrightcharge = spr_ringjumpthrowright;
						p2.stillattackright = 0;
						p2.stillattackrightcharge1 = 0;
						p2.movingattackrightcharge = 0;
						p2.movingattackrightcharge1 = 0;
						p2.jumpgunrightcharge = spr_ringjumpthrowright;
						p2.jumpgunrightcharge1 = spr_ringjumpthrowright;
						p2.jumprightcharge = spr_ringjumprightcharge;
						p2.jumprightcharge1 = spr_ringjumprightcharge1;
						p2.moverightcharge = spr_ringrunrightcharge;
						p2.moverightcharge1 = spr_ringrunrightcharge1;
						break;
					case 12:
						p2.damagemultiplyer = 1.1;
						p2.maxbullets = 3;
						p2.reloadtime = 5;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_geminiidleright;
						p2.idleanimationrightcharge = spr_geminiidlerightcharge;
						p2.idleanimationrightcharge1 = spr_geminiidlerightcharge1;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_geminishootright;
						p2.stillattackrightcharge = spr_geminishootrightcharge;
						p2.stillattackrightcharge1 = spr_geminishootrightcharge1;
						p2.movingattackright = 0;
						p2.movingattackrightcharge = 0;
						p2.movingattackrightcharge1 = 0;
						p2.moveright = spr_geminirunright;
						p2.moverightcharge = spr_geminirunrightcharge;
						p2.moverightcharge1 = spr_geminirunrightcharge1;
						p2.jumpgunright = 0;
						p2.jumpgunrightcharge = 0;
						p2.jumpgunrightcharge1 = 0;
						p2.jumpright = spr_geminijumpright;
						p2.jumprightcharge = spr_geminijumprightcharge;
						p2.jumprightcharge1 = spr_geminijumprightcharge1;
						break;
					case 13:
						p2.damagemultiplyer = 1;
						p2.maxbullets = 3;
						p2.reloadtime = 20;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_chillidleright;
						p2.idleanimationrightcharge = spr_chillidlerightcharge;
						p2.idleanimationrightcharge1 = spr_chillidlerightcharge1;
						p2.hurtanimationright = 0;
						p2.stillattackright = spr_chillshootright;
						p2.stillattackrightcharge = spr_chillshootrightcharge;
						p2.stillattackrightcharge1 = spr_chillshootrightcharge1;
						p2.movingattackright = 0;
						p2.movingattackrightcharge = 0;
						p2.movingattackrightcharge1 = 0;
						p2.moveright = spr_chillrunright;
						p2.moverightcharge = spr_chillrunrightcharge;
						p2.moverightcharge1 = spr_chillrunrightcharge1;
						p2.jumpgunright = 0;
						p2.jumpgunrightcharge = 0 ;
						p2.jumpgunrightcharge1 = 0;
						p2.jumpright = spr_chilljumpright;
						p2.jumprightcharge = spr_chilljumprightcharge;
						p2.jumprightcharge1 = spr_chilljumprightcharge1;
						break;
					case 14:
						p2.damagemultiplyer = 1;
						p2.maxbullets = 3;
						p2.reloadtime = 5;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_codaidleright;
						p2.idleanimationrightcharge = spr_codaidlerightcharge;
						p2.idleanimationrightcharge1 = spr_codaidlerightcharge1;
						//p2.hurtanimationright = spr_hurtright;
						p2.stillattackright = spr_codaidleshootright;
						p2.stillattackrightcharge = spr_codaidleshootrightcharge;
						p2.stillattackrightcharge1 = spr_codaidleshootrightcharge1;
						p2.movingattackright = spr_codarungunright;
						p2.movingattackrightcharge = spr_codarungunrightcharge;
						p2.movingattackrightcharge1 = spr_codarungunrightcharge1;
						p2.moveright = spr_codarunright;
						p2.moverightcharge = spr_codarunrightcharge;
						p2.moverightcharge1 = spr_codarunrightcharge1;
						p2.jumpgunright = spr_codajumpshootright;
						p2.jumpgunrightcharge = spr_codajumpshootrightcharge;
						p2.jumpgunrightcharge1 = spr_codajumpshootrightcharge1;
						p2.jumpright = spr_codajumpright;
						p2.jumprightcharge = spr_codajumprightcharge;
						p2.jumprightcharge1 = spr_codajumprightcharge1;
						p2.slideright = spr_codaslideright;
						break;
					case 15:
						p2.damagemultiplyer = 1;
						p2.maxbullets = 3;
						p2.reloadtime = 30;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_elecidleright;
						p2.idleanimationrightcharge = spr_elecidlerightcharge;
						p2.idleanimationrightcharge1 = spr_elecidlerightcharge1;
						//p2.hurtanimationright = spr_hurtright;
						p2.stillattackright = spr_elecshootright;
						p2.stillattackrightcharge = spr_elecshootrightcharge;
						p2.stillattackrightcharge1 = spr_elecshootrightcharge1;
						p2.moveright = spr_elecrunright;
						p2.moverightcharge = spr_elecrunrightcharge;
						p2.moverightcharge1 = spr_elecrunrightcharge1;
						p2.jumpright = spr_elecjumpright;
						p2.jumprightcharge = spr_elecjumprightcharge;
						p2.jumprightcharge1 = spr_elecjumprightcharge1;
						break;
					case 16:
						p2.damagemultiplyer = 1;
						p2.maxbullets = 3;
						p2.reloadtime = 30;
						p2.grav = 0.3;
						p2.jumpspeed = 8;
						p2.movespeed = 2;
						p2.idleanimationright = spr_fireidleright;
						p2.idleanimationrightcharge = spr_fireidlerightcharge;
						p2.idleanimationrightcharge1 = spr_fireidlerightcharge1;
						//p2.hurtanimationright = spr_hurtright;
						p2.stillattackright = spr_fireshootright;
						p2.stillattackrightcharge = spr_fireshootrightcharge;
						p2.stillattackrightcharge1 = spr_fireshootrightcharge1;
						p2.moveright = spr_firerunright;
						p2.moverightcharge = spr_firerunrightcharge;
						p2.moverightcharge1 = spr_firerunrightcharge1;
						p2.jumpright = spr_firejumpright;
						p2.jumprightcharge = spr_firejumprightcharge;
						p2.jumprightcharge1 = spr_firejumprightcharge1;
						break;
				}
			if (p2.character != 1) && (p2.character != 3) && (p2.character != 5) && (p2.character != 9) && (p2.character != 10) && (p2.character != 14) {
				p2.slideright = 0;
			}
			if (p2.character != 6) {
				p2.jumpright2 = 0;
			}
			if (p2.character == 6) || (p2.character == 7) || (p2.character == 12) || (p2.character == 13) || (p2.character == 15) || (p2.character == 16) {
				p2.jumpgunright = 0;
				p2.jumpgunrightcharge = 0;
				p2.jumpgunrightcharge1 = 0;
			}
			if (p2.character != 1) && (p2.character != 3) && (p2.character != 7) && (p2.character != 9) && (p2.character != 10) && (p2.character != 11) && (p2.character != 12) && (p2.character != 13) && (p2.character != 14) && (p2.character != 15) && (p2.character != 16){
				p2.idleanimationrightcharge = 0;
				p2.idleanimationrightcharge1 = 0;
				p2.stillattackrightcharge = 0;
				p2.stillattackrightcharge1 = 0;
				p2.movingattackrightcharge = 0;
				p2.movingattackrightcharge1 = 0;
				p2.jumpgunrightcharge = 0;
				p2.jumpgunrightcharge1 = 0;
				p2.jumprightcharge = 0;
				p2.jumprightcharge1 = 0;
				p2.moverightcharge = 0;
				p2.moverightcharge1 = 0;
			}
			break;
		
		
		}

	}
	/*
	currentplayer = instance_create_layer(16 * argument2, 16 * argument3, "Instances", obj_player);

	currentplayer.player = argument0;
	currentplayer.character = argument1;
	switch (currentplayer.player) {
		case 1:
		currentplayer.buttonmoveright = vk_right;
		currentplayer.buttonmoveleft = vk_left;
		currentplayer.buttonjump = ord("J");
		currentplayer.buttonshoot = ord("K");
		break;
		case 2:
		currentplayer.buttonmoveright = ord("D");
		currentplayer.buttonmoveleft = ord("A");
		currentplayer.buttonjump = ord("G");
		currentplayer.buttonshoot = ord("F");
		break;
	}
	//1 = megaman
	// 2 = metalman
	// 3 = protoman
	switch (currentplayer.character) {
		case 1:
		currentplayer.maxbullets = 2;
		currentplayer.reloadtime = 5;
		currentplayer.grav = 0.3;
		currentplayer.jumpspeed = 8;
		currentplayer.movespeed = 2;
		currentplayer.idleanimationright = spr_idleright;
		currentplayer.idleanimationleft = spr_idleleft;
		currentplayer.hurtanimationright = spr_hurtright;
		currentplayer.hurtanimationleft = spr_hurtleft;
		currentplayer.stillattackright = spr_gunright;
		currentplayer.stillattackleft = spr_gunleft;
		currentplayer.movingattackright = spr_rungunright;
		currentplayer.movingattackleft = spr_rungunleft;
		currentplayer.moveright = spr_runright;
		currentplayer.moveleft = spr_runleft;
		currentplayer.jumpgunright = spr_jumpgunright;
		currentplayer.jumpgunleft = spr_jumpgunleft;
		currentplayer.jumpright = spr_jumpright;
		currentplayer.jumpleft = spr_jumpleft;
	
		break;
	
		case 2:
		currentplayer.maxbullets = 1;
		currentplayer.reloadtime = 60;
		currentplayer.maxbullets = 0;
		currentplayer.reloadtime = 5;
		currentplayer.grav = 0.3;
		currentplayer.jumpspeed = 7;
		currentplayer.movespeed = 2;
		currentplayer.idleanimationright = spr_metalstillright;
		currentplayer.idleanimationleft = spr_metalstillleft;
		currentplayer.hurtanimationright = 0;
		currentplayer.hurtanimationleft = 0;
		currentplayer.stillattackright = spr_throwright;
		currentplayer.stillattackleft = spr_throwleft;
		currentplayer.movingattackright = 0;
		currentplayer.movingattackleft = 0;
		currentplayer.moveright = spr_metalrunright;
		currentplayer.moveleft = spr_metalrunleft;
		currentplayer.jumpgunright = spr_throwairright;
		currentplayer.jumpgunleft = spr_throwairleft;
		currentplayer.jumpright = spr_metaljumpright;
		currentplayer.jumpleft = spr_metaljumpleft;
		break;
	
		case 3:
		currentplayer.maxbullets = 4;
		currentplayer.reloadtime = 10;
		currentplayer.grav = 0.3;
		currentplayer.jumpspeed = 9;
		currentplayer.movespeed = 2.5;
		currentplayer.idleanimationright = spr_protostillright;
		currentplayer.idleanimationleft = spr_protostillleft;
		currentplayer.hurtanimationright = 0;
		currentplayer.hurtanimationleft = 0;
		currentplayer.stillattackright = spr_protogunright;
		currentplayer.stillattackleft = spr_protogunleft;
		currentplayer.movingattackright = 0;
		currentplayer.movingattackleft = 0;
		currentplayer.moveright = spr_protorunright; 
		currentplayer.moveleft = spr_protorunleft;
		currentplayer.jumpgunright = spr_protojumpgunright;
		currentplayer.jumpgunleft = spr_protojumpgunleft;
		currentplayer.jumpright = spr_protojumpright;
		currentplayer.jumpleft = spr_protojumpleft;
		/*
		shield = instance_create_layer(x, y, "Instances", obj_protoshield);
		shield.player = id;
	
	}


/* end scr_createplayer */
}
