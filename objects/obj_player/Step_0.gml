/// @description Insert description here
// You can write your code in this editor

if (stuntimer = 0) stuntype = 0;
if (room == menu) {
	currentammo = 1000;
	hhealth = 1000;
}
if (room == mapmenu) {
	instance_destroy();
}

if (bursttimer > 0) {
	if (bursttimer == 12) || (bursttimer == 8) || (bursttimer == 4) || (bursttimer == 1) {
		if (lastdirection == 1) {
			if (key_up_held) && !(key_down_held) script_execute(scr_shoot, 0, character, id, 45);
			if !(key_up_held) && (key_down_held) script_execute(scr_shoot, 0, character, id, 315);
			if !(key_up_held) && !(key_down_held) script_execute(scr_shoot, 0, character, id, 0);
		}
		if (lastdirection == -1) {
			if (key_up_held) && !(key_down_held) script_execute(scr_shoot, 0, character, id, 135);
			if !(key_up_held) && (key_down_held) script_execute(scr_shoot, 0, character, id, 225);
			if !(key_up_held) && !(key_down_held) script_execute(scr_shoot, 0, character, id, 180);
		}
	}
	bursttimer--;
}
if (character == 5) {
	currentammo = 5;
	amountofbullets = 0;
	chargetimer = 0;
}
if (ring == 1) && (character == 11) {
	chargetimer = 0;
}

if (amountofbullets < 0) {
	amountofbullets = 0;
}
if (completefreeze == 1) {
	hsp = 0;
	vsp = 0;
}

if (place_meeting(x, y, obj_waterdown)) && !(place_meeting(x, y + 1, obj_item)) {
	grav = 0.35;
} else {
	if (place_meeting(x, y, obj_water)) && !(place_meeting(x, y + 1, obj_item)) {
		grav = 0.1;
	}
}
if (place_meeting(x, y + 1, obj_wall)) || (place_meeting(x, y + 1, obj_item)) {
	onground = 1;
} else {
	onground = 0;
}

if (hhealth <= 0) {
	for (var vv = 0; vv <= 15; vv++) {
		var deathobject = instance_create_layer(x, y, "Effects", obj_deathexplosion);
		deathobject.number = vv;
	}
	audio_play_sound(sound_death, 1, false);
	instance_destroy();
}
if (stuntimer > 0) {
	stuntimer--;
	chargetimer = 0;
	bursttimer = 0;
	ffriction = 0;
	frictiontimer = 0;
} else {
	if ((invincibility != 1) || (room == battleroom) || (room == flashroom) || (room == bubbleroom) || (room == elecroom)) || (room == gutsroom) || (room == shadowroom) || (room == highwayroom){
	
		key_right = keyboard_check(buttonmoveright);
		key_right_pressed = keyboard_check_pressed(buttonmoveright);
		key_left = -keyboard_check(buttonmoveleft);
		key_left_pressed = keyboard_check_pressed(buttonmoveleft);
		key_jump = keyboard_check_pressed(buttonjump);

		key_jump_held = keyboard_check(buttonjump);
		
		key_shoot = keyboard_check_pressed(buttonshoot);
			
		key_shoot_held = keyboard_check(buttonshoot);
		
		key_shoot_release = keyboard_check_released(buttonshoot);
	
	
		key_down = keyboard_check_pressed(buttondown);
		
		key_down_held = keyboard_check(buttondown);
	
		key_up = keyboard_check_pressed(buttonup);
	
		key_up_held = keyboard_check(buttonup);
	
		if (invincibility == 1) {
			key_shoot = 0;
			key_shoot_held = 0;
		}
		if (key_right) && (key_left * -1) {
			key_right = 0;
			key_left = 0;
		}
		if (flying == 1) && (currentammo <= 0) {
			instance_create_layer(x, y, "Effects", obj_trebleescape);
			flying = 0;
		}
		if (flying == 1)  {
			currentammo -= 0.015;
			if (key_up)	currentflyspeed = 0;
			if (key_down) currentflyspeed = 0;
			if (key_right_pressed) currentflyspeed = 0;
			if (key_left_pressed) currentflyspeed = 0;
		
			if (key_up_held) {
				if (currentflyspeed + 0.005 <= movespeed * 0.025) currentflyspeed += 0.005;
				vsp -= currentflyspeed;
				currentammo -= 0.025;
			}
			if (key_down_held) {
				if (currentflyspeed + 0.005 <= movespeed * 0.025) currentflyspeed += 0.005;
				vsp += currentflyspeed;
				currentammo -= 0.025;
			}
			if (key_right) {
				if (currentflyspeed + 0.005 <= movespeed * 0.025) currentflyspeed += 0.005;
				hsp += currentflyspeed;
				currentammo -= 0.025;
			}
			if (key_left * -1) {
				if (currentflyspeed + 0.005 <= movespeed * 0.025) currentflyspeed += 0.005;
				hsp -= currentflyspeed;
				currentammo -= 0.025;
			}
			ffriction = 0;
			onground = 0;
		}
	} else {
	
		key_right = 0;
		key_left = 0;
		key_jump = 0;
		key_jump_held = 0;
		key_shoot = 0;
		key_shoot_held = 0;
		key_shoot_release = 0;
		key_down = 0;
	
		sprite_index = hurtanimationright;
		image_xscale = lastdirection
	}
	if (specialtimer <= 0) {
		if (key_right == 1) {
			lastdirection = 1;
		}
		if (key_left == -1) {
			lastdirection = -1;
		}
	}

	//deciding current shooting sprites to use;
	if (character == 10) {
		if (flying == 0) {
			if (onground) {
				if !(key_right) && !(key_left * -1) {
					if (key_up_held) && !(key_down_held) {
						currentattack = stillattackrightup;
						image_xscale = lastdirection;
					}
					if !(key_up_held) && (key_down_held) {
						currentattack = stillattackrightdown;
						image_xscale = lastdirection;
					}
					if !(key_up_held) && !(key_down_held) {
						currentattack = stillattackright;
						image_xscale = lastdirection;
					}
				} else {
					currentattack = movingattackright;
					image_xscale = lastdirection;
				}
			} else {
		
				if (key_up_held) && !(key_down_held) {
					currentattack = jumpattackrightup;
					image_xscale = lastdirection;
				}
				if !(key_up_held) && (key_down_held) {
					currentattack = jumpattackrightdown;
					image_xscale = lastdirection;
				}
				if !(key_up_held) && !(key_down_held) {
					image_speed = 1;
					if (chargetimer > super1chargetime) && (chargetimer < super2chargetime) {
						currentattack = spr_bassjumpshootrightcharge;
					} else {
						if (chargetimer >= room_speed) {
							currentattack = spr_bassjumpshootrightcharge1;
						} else {
							currentattack = jumpgunright;
						}
					}
				
					image_xscale = lastdirection;
				}
		
			}
		} 
	}


	if (slidingtimer <= 0) {
		move = key_left + key_right;
	}

	if (key_shoot_held) || (flying){
		ammoregentimer = 0;
		ammoregenrate = 120;
	} else {
		ammoregentimer++;
	}

	if ((ammoregentimer >= ammoregenrate) && (currentammo + 1 <= maxammo)) {
		if (ammoregenrate > 30) ammoregenrate -= 10; 
		ammoregentimer = 0;
		currentammo += 1;
	}
	if (completefreeze != 1) && (flying != 1) hsp = move * movespeed + ffriction;

	if ((key_right == 0) && (key_left == 0)) && (onground) {
		frictiontimer = 0;
	}
	if ((key_right == 1) || (key_left == -1)) && !(onground) {
		frictiontimer = 0;
		ffriction = 0;
	}
	if !(onground) {
		ffriction = 0;
		//frictiontimer += airfrictiondecreasespeed
	}
	if (frictiontimer >= maxfrictiontimer) {
		if (ffriction > 0) {
			ffriction -= frictionincreaserate;
		}
		if (ffriction < 0) {
			ffriction += frictionincreaserate;
		}
	} 

	if (frictiontimer <= (maxfrictiontimer * -1) * 2) || (frictiontimer > 30) {
		ffriction = ffriction / 8;
		//frictiontimer = 0;
	}
	if (frictiontimer > 60) ffriction = 0;

	if (flying != 1) && (completefreeze != 1){
		if ((vsp < 0) && (!key_jump_held)) vsp = max(vsp, -jumpspeed / 8);

		if !(specialtimer > 0) {
			if (vsp < 10) vsp += (grav * ggravity);
		}

		if (/*(key_jump) || (key_shoot) || */(key_left * -1) || (key_right)) {
			sliding = 0;
		}
		if (character != 10) && (character != 5) && ((key_jump) || (key_shoot)) {
			sliding = 0;
		}

		if ((character == 10) || (character == 5)) && !(onground){
			if (slidingtimer > 0) {
				if ((key_right)) || ((key_left * -1)) {
					slidingtimer = 0;
					sliding = 0;
				}
				if (sliding == 1) {
					hsp += slidespeed * 1.15;
				}
				if (sliding == -1) {
					hsp -= slidespeed * 1.15;
				}
			}
		}

		if (slidingtimer < 1) || (sliding == 0) {
			smokeexists = 0;
		}

		if (place_meeting(x, y + 1, obj_item)) {
			ffriction = 0;
			vsp = key_jump * -jumpspeed;
	
			currentitem = instance_place(x, y + 1, obj_item);
			if (currentitem.itemtype == 2) {
				hsp += currentitem.move;
		
			}
	
			if (place_meeting(x, y - 1, obj_wall)) {
				with (currentitem) {
					instance_destroy();
				}
			}
	
		}


		if (place_meeting(x, y + 1, obj_wall)) && !(place_meeting(x, y + 1, obj_item))
		{
			vsp = key_jump * -jumpspeed;
			if (place_meeting(x, y + 1, obj_wall)) {
				currentbelt = instance_place(x, y + 1, obj_wall);
				hsp += currentbelt.facing;
					if (currentbelt.type == 1) {
						if ((key_right) || (slidingtimer > 0)) && (lastdirection == 1) {
							if (ffriction + frictionincreaserate <= maxfrictionspeed) {
								ffriction += frictionincreaserate;
							}
						frictiontimer = 0;
						}
						if ((key_left * -1) || (slidingtimer > 0)) && (lastdirection == -1) {
							if (ffriction - frictionincreaserate >= maxfrictionspeed * -1) {
								ffriction -= frictionincreaserate;
							}
						frictiontimer = 0;
					}
				}
			if (slideright != 0){
				if (infinitesliding == 1) {
					if (key_down_held) && (slidingtimer <= 0) && (onground){
						sliding = lastdirection;
						slidingtimer = slidingtime;
			
					}
				} else {
					if (key_down) && (slidingtimer <= 0) && (onground){
						sliding = lastdirection;
						slidingtimer = slidingtime;
			
					}
				}
			if (slidingtimer > 0) {
				audio_stop_sound(sound_chargeup);
				chargetimer = 0;
				if (sliding == 1) {
					sprite_index = slideright;
					image_speed = 1;
					image_xscale = 1;
					hsp += slidespeed;
					if (smokeexists == 0) {
						instance_create_layer(x - 10, y, "Effects", obj_smoke);
						smokeexists = 1;
						}
					}
				if (sliding == -1) {
					sprite_index = slideright;
					image_speed = 1;
					image_xscale = -1;
					hsp -= slidespeed;
					if (smokeexists == 0) {
						instance_create_layer(x + 10, y, "Effects", obj_smoke);
						smokeexists = 1;
					}
				}
			}
			slidingtimer--;
			if (slidingtimer <= 0) {
				sliding = 0;
			}
			if (sliding == 0) {
				slidingtimer = 0;
			}
			}
	
		} else {
			sliding = 0;
			slidingtimer = 0;
			slideright = 0;
			slideleft = 0;
		}
	
		} else {
			if (character != 10) && (character != 5) {
				sliding = 0;
				slidingtimer = 0;
			}
		}

		if (knockbacktimer > 0) {
			knockbacktimer--;
			if (lastdirection == 1) {
				hsp -= knockbackspeed;
			}
			if (lastdirection == -1) {
				hsp += knockbackspeed;
			}
		}
	}

	if (specialtimer > 0) {
		if (character == 3) {
			if (onground) {
				//specialtimer--;
				chargetimer = 0;
				move = 0;
				hsp = 5 * lastdirection;
				vsp = 0;
				key_right = 0;
				key_shoot = 0;
				key_left = 0;
				sliding = 0;
				slidingtimer = 0;
				if (place_meeting(x + hsp, y, obj_wall)) specialtimer = 0;
			} else {
				specialtimer = 0;
				move = 0;
				hsp = 0;
				vsp = 0;
				key_right = 0;
				key_shoot = 0;
				key_left = 0;
				sliding = 0;
				slidingtimer = 0;
			}
		}
		if (character == 13) {
			specialtimer--;
			chargetimer = 0;
			key_shoot = 0;
			move = 0;
			hsp = 0;
			vsp = 0;
			if (specialtimer > 90) {
				if !(y <= comparey - 150) && !(place_meeting(x, y - 8, obj_wall)) { 
					repeat (8) {
						y -= 1;
					}
				}
				if ((y <= comparey - 150) || (place_meeting(x, y - 8, obj_wall))) {
					stopy = y;
					specialtimer = 90
				}
			}		
		}
	}
	//Horizontal Collision
	if (place_meeting(x + hsp, y, obj_wall)) 
	{
		sliding = 0;
		ffriction = 0;
	    while(!place_meeting(x + (sign(hsp) * 0.01), y, obj_wall))
	    {
	        x += sign(hsp) * 0.01;
	    }
	
		hsp = 0;	
	}

	if (place_meeting(x + hsp, y, obj_item)) 
	{
		hsp = 0;
	}

	x += hsp;

	//Vertical Collision
	if (place_meeting(x, y + vsp, obj_wall)) 
	{
		sliding = 0;
		while(!place_meeting(x, y + (sign(vsp) * 0.01), obj_wall))
		{
			y += sign(vsp) * 0.01;
		}
		vsp = 0;
	}

	if (place_meeting(x, y + vsp, obj_item)) 
	{
	
	    vsp = 0;
	}
	y += vsp;


	//animation
	if (invincibility != 1)  || (room == battleroom) || (room == flashroom) || (room == bubbleroom) || (room == elecroom) || (room == gutsroom) || (room == shadowroom) || (room == highwayroom){
		shoottimer--;
		if (character != 6) {
			reloadtimer--;
		}
	//still
		if (((key_right == 0) && (key_left == 0) && (slidingtimer <= 0) && (onground))){
			if (key_shoot) && (shoottimer <= 0) && (amountofbullets + 1 <= maxbullets) && (reloadtimer <= 0) && (chargetimer < superchargetimethreshhold){
				if (currentammo > 0){
					if (character != 11) {
						sprite_index = stillattackright;
						image_speed = 1;
					}
					if (character == 11) && (ring == 1) {
						sprite_index = stillattackright;
						image_speed = 1;
					}
					if (character == 10) {
						sprite_index = currentattack;
					}
					image_xscale = lastdirection;
				}
			} else {
				if (shoottimer > 0) && (currentammo > 0) {
					if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
						sprite_index = stillattackrightcharge;
						image_speed = 1;
					} else {
						if (chargetimer >= room_speed) {
							sprite_index = stillattackrightcharge1
							image_speed = 1;
						} else {
							if (character != 11) {
								sprite_index = stillattackright;
								image_speed = 1;
							}
							if (character == 11) && (ring == 1) {
								sprite_index = stillattackright;
								image_speed = 1;
							}
							if (character == 10) {
								sprite_index = currentattack;
							}
						}
					}
					image_xscale = lastdirection;
				} else {
					if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
						sprite_index = idleanimationrightcharge;
						image_speed = 1;
					} else {
						if (chargetimer >= room_speed)  {
							sprite_index = idleanimationrightcharge1;
							image_speed = 1;
						} else {
							if (character == 6) && (reloadtimer > 0) {
								sprite_index = idleanimationright2;
								image_speed = 0;
							} else {
								sprite_index = idleanimationright;
								image_speed = 1;
								if (character == 11) && (ring == 1) {
									sprite_index = spr_ring2idleright;
									image_speed = 0;
								}
							}					
						}
					}
					image_xscale = lastdirection;
				}
		
			}
		}
		if (character == 1) || (character == 9) || (character == 10) || (character == 14) {
			if ((key_right == 1) && (key_left == 0) && (onground)){
				if (shoottimer > 0) {
					if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
							sprite_index = movingattackrightcharge;
							image_speed = 1.2;
						} else {
							if (chargetimer >= room_speed) {
								sprite_index = movingattackrightcharge1;
								image_speed = 1.2;
							} else {
								sprite_index = movingattackright;
								image_speed = 0.6;
								if (character == 10) {
									sprite_index = currentattack;
								}
							}
						}
				} else {
					if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime){
							sprite_index = moverightcharge;
							image_speed = 1.2;
						} else {
							if (chargetimer >= room_speed) {
								sprite_index = moverightcharge1;
								image_speed = 1.2;
							} else {
								sprite_index = moveright;
								image_speed = 0.6;	
							}
						}
				}
				image_xscale = 1;
			}
			if ((key_right == 0) && (key_left == -1) && (onground)) {
				if (shoottimer > 0) {
					if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime)  {
							sprite_index = movingattackrightcharge;
							image_speed = 1.2;
						} else {
							if (chargetimer >= room_speed) {
								sprite_index = movingattackrightcharge1;
								image_speed = 1.2;
							} else {
								sprite_index = movingattackright;
								image_speed = 0.6;
								if (character == 10) {
									sprite_index = currentattack;
								}
							}
						}
				} else {
					if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
							sprite_index = moverightcharge;
							image_speed = 1.2;
						} else {
							if (chargetimer >= room_speed) {
								sprite_index = moverightcharge1;
								image_speed = 1.2;
							} else {
								sprite_index = moveright;
								image_speed = 0.6	
							}
						}
				
				}
				image_xscale = -1;
			}
		}
		if (character == 2) || (character == 3) || (character == 4) || (character == 5) || (character == 6) || (character == 7) || (character == 8) || (character == 11) || (character == 12) || (character == 13) || (character == 15) || (character == 16){
			if ((key_right == 1) && (key_left == 0) && (key_jump == 0) && (onground)) {
				if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
							sprite_index = moverightcharge;
							image_speed = 1.2;
						} else {
							if (chargetimer >= room_speed){
								sprite_index = moverightcharge1;
								image_speed = 1.2;
							} else {
								if ((character == 6) && (reloadtimer > 0)) {
									sprite_index = moveright2;
									image_speed = 0.6;
								} else {
									sprite_index = moveright;
									image_speed = 0.6;
									if (character == 11) && (ring == 1) {
										sprite_index = spr_ring2runright;
										image_speed = 0.6;
									}
								}
							
							}
						}
						image_xscale = 1;
				}
			if ((key_right == 0) && (key_left == -1) && (onground)) {
				if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
							sprite_index = moverightcharge;
							image_speed = 1.2;
						} else {
							if (chargetimer >= room_speed) {
								sprite_index = moverightcharge1;
								image_speed = 1.2;
							} else {
								if ((character == 6) && (reloadtimer > 0)) {
									sprite_index = moveright2;
									image_speed = 0.6;
								} else {
									sprite_index = moveright;
									image_speed = 0.6;
									if (character == 11) && (ring == 1) {
										sprite_index = spr_ring2runright;
										image_speed = 0.6;
								}
									}
							
							}
						}
					image_xscale = -1;
				}
			}
		if (currentammo <= 0) {
			chargetimer = 0;
		}
		if ((character == 1) || (character == 3) || (character == 7) || (character == 9) || (character == 10) || (character == 11) || (character == 12) || (character == 13) || (character == 14) || (character == 15) || (character == 16)) && (currentammo > 0) && (clone != 1){
			if (key_shoot_held) {
				chargetimer++;
				if (chargetimer > superchargetimethreshhold + 5) {
					if (!(audio_is_playing(sound_chargeup)) && (chargetimer < (room_speed * 1.7))){
						audio_play_sound(sound_chargeup, 1, false);
					
					}
				}
				if (aimrecticle == 0) && (character == 14) && (chargetimer >= super2chargetime) {
					var tempx = x;
					var tempy = y;
					x = 1000;
					y = 1000;
					aimrecticle = instance_create_layer(x, y, "Effects", obj_codaaim);
					aimrecticle.tracking = (instance_nearest(tempx, tempy, obj_player));
					x = tempx;
					y = tempy;
					aimrecticle.parent = id;
				}
			} 
			if (key_shoot_release){
				image_blend = c_white;
				audio_stop_sound(sound_chargeup);
				if (chargetimer >= (super2chargetime)) {
					if (character != 7) && (character != 9) && (character != 10) && (character != 11) && (character != 12) && (character != 13) && (character != 15) {
						if (lastdirection == 1){
							if ((character == 16) && (onground) && (move == 0)) || (character != 16) script_execute(scr_shoot, 2, character, id, 0);
							if (character == 1) || (character == 3) {
								knockbacktimer = knockbackspeed;
							}
						}
		
						if (lastdirection == -1){
							if ((character == 16) && (onground) && (move == 0)) || (character != 16) script_execute(scr_shoot, 2, character, id, 180);
							if (character == 1) || (character == 3) {
								knockbacktimer = knockbackspeed;
							}
						}
						if (character == 14) aimrecticle = 0;
					}	
					if (character == 7) {
						script_execute(scr_shield);
					
					}
					if (character == 9) {
						if !(key_right) && !(key_left) {
							if (item != 0) {
								with (item) {
									instance_destroy();
								}
							}
							script_execute(scr_item, 2);
						}
					}
					if (character == 10) {
					
						if (flying == 0) {
							instance_create_layer(x, 0, "Effects", obj_treblecombine);
						}
						if (flying == 1) {
							instance_create_layer(x, y, "Effects", obj_trebleescape);
							flying = 0;
						}
					}
					if (character == 11) {
						ring = 1;
						currentammo -= 12;
					}
					if (character == 12) && (onground) && (amountofbullets + 1 <= maxbullets) {
						if (lastdirection == 1){
							var laser = instance_create_layer(x + 14, y, "Instances", obj_laser);
							laser.direction = 0;
						}
						if (lastdirection == -1) {
							var laser = instance_create_layer(x - 14, y, "Instances", obj_laser);
							laser.direction = 180;
						}
						laser.sprite_index = spr_geminilaser1;
						laser.type = 2;
						shoottimer = 20;
						laser.player = id;
						currentammo -= 15;
						amountofbullets++;
					}
				if (character == 13) {
					if (currentammo > 30) {
						specialtimer = 180;
						comparey = y;
					}
				}
				if (character == 15) && (amountofbullets + 1 <= maxbullets) && (!(onground) || (onground) && (move == 0)){
					var cloud = instance_create_layer(x + (5 * lastdirection), y, "Instances", obj_cloud);
					cloud.parent = id;
					cloud.ddirection = lastdirection;
					amountofbullets++;
					currentammo -= 8;
					shoottimer = 20;
				}
				
				} else {
					if (chargetimer >= (super1chargetime)){
						if (character == 16) {
							if (flameshield == 0) {
								currentammo -= 1;
								flameshield = instance_create_layer(-1000, -1000, "Effects", obj_flameshield);
								flameshield.player = id;
								if (lastdirection == 1) flameshield.savedirection = 1;
								if (lastdirection == -1) flameshield.savedirection = -1;
								
								audio_play_sound(sound_flame, 1, false);
							}
						}
						if (lastdirection == 1){
							if (character == 1) {
								script_execute(scr_shoot, 1, character, id, 0);
							} 
							if (character == 3) && (onground){
								specialtimer = 50;
							}
							if (character == 7)  && (onground) && (move == 0)  && (amountofbullets + 1 <= maxbullets) {
								script_execute(scr_shoot, 1, character, id, 0);
							}
							if (character == 9) {
								if !(key_right) && !(key_left)  { 
									if (item != 0) {
										with (item) {
											instance_destroy();
										}
									}
									script_execute(scr_item, 1);
								}
							}	
							if (character == 10) && (amountofbullets == 0)bursttimer = 12;
							if (character == 11) {
							}
							if (character == 12) && (onground) && (amountofbullets + 1 <= maxbullets){
								var laser = instance_create_layer(x + 14, y, "Instances", obj_laser);
								laser.direction = 0;
								laser.sprite_index = spr_geminilaser;
								laser.type = 1;
								shoottimer = 20;
								laser.player = id;
								currentammo -= 10;
								amountofbullets++;
							}
							if (character == 13) && (amountofbullets + 1 <= maxbullets){
								if !(place_meeting(x, y + 35, obj_wall)) {
									script_execute(scr_shoot, 1, character, id, 270);
								}
							}
							if (character == 14)  && (amountofbullets + 1 <= maxbullets) {
								script_execute(scr_shoot, 1, character, id, 0);
							}
							if (character == 15)  && (amountofbullets + 1 <= maxbullets) && (onground) && (move == 0){
								script_execute(scr_shoot, 1, character, id, 0);
							}
						}
						if (lastdirection == -1){
							if (character == 1) {
								script_execute(scr_shoot, 1, character, id, 180);
							} 
							if (character == 3) && (onground){
								specialtimer = 50;
							}
							if (character == 7)  && (onground) && (move == 0)  && (amountofbullets + 1 <= maxbullets){
								script_execute(scr_shoot, 1, character, id, 180);
							}
							if (character == 9) {
								if !(key_right) && !(key_left) { 
									if (item != 0) {
										with (item) {
											instance_destroy();
										}
									}
									script_execute(scr_item, 1);
								}
							}
							if (character == 10) && (amountofbullets == 0) bursttimer = 12;
							if (character == 11) {
							}
							if (character == 12) && (onground) && (amountofbullets + 1 <= maxbullets){
								var laser = instance_create_layer(x - 14, y, "Instances", obj_laser);
								laser.direction = 180;
								laser.sprite_index = spr_geminilaser;
								laser.type = 1;
								shoottimer = 20;
								laser.player = id;
								currentammo -= 10;
								amountofbullets++;
							}
							if (character == 13) && (amountofbullets + 1 <= maxbullets){
								if !(place_meeting(x, y + 35, obj_wall)) {
									script_execute(scr_shoot, 1, character, id, 270);
								}
							}
							if (character == 14)  && (amountofbullets + 1 <= maxbullets) {
								script_execute(scr_shoot, 1, character, id, 180);
							}
							if (character == 15)  && (amountofbullets + 1 <= maxbullets) && (onground) && (move == 0){
								script_execute(scr_shoot, 1, character, id, 180);
							}
						}
					}
				}
			
			}
			if !(key_shoot_held) {
				chargetimer = 0;
			}
		} else {
			chargetimer = 0;
		}
		if (character == 1) || (character == 9) || (character == 14){
			if (key_shoot) && (reloadtimer <= 0) && (amountofbullets + 1 <= maxbullets) && (currentammo > 0){
				if (lastdirection == 1){
					script_execute(scr_shoot, 0, character, id, 0);

				}
				if (lastdirection == -1){
					script_execute(scr_shoot, 0, character, id, 180);
				}
			}
		}
		if (character == 2) {
			if (key_shoot) && (reloadtimer <= 0) && (amountofbullets + 1 <= maxbullets) && (currentammo > 0) {
				if  (((key_right == 0) && (key_left == 0) && (key_jump == 0)) && !(key_jump_held)){
				if (lastdirection == 1){
					script_execute(scr_shoot, 0, character, id, 0);
				}
				if (lastdirection == -1){
					script_execute(scr_shoot, 0, character, id, 180);
				}
			} else {
				if (!(onground)) {
					if (lastdirection == 1){
						script_execute(scr_shoot, 0, character, id, 315);
					}
					if (lastdirection == -1){
						script_execute(scr_shoot, 0, character, id, 225);
						}
					}
				}
			}
		}
	
		if (character == 3) || (character == 4) || (character == 8) {
			if (key_shoot) && (reloadtimer <= 0) && (amountofbullets + 1 <= maxbullets) && (currentammo > 0) {
				if  ((onground) && (key_right == 0) && (key_left == 0)) || ((!onground)) {
					if (lastdirection == 1){
						if (character == 8) {
							script_execute(scr_snake);
						} else {
							script_execute(scr_shoot, 0, character, id, 0);
						}
					}	
					if (lastdirection == -1){
						if (character == 8) {
							script_execute(scr_snake);
						} else { 
							script_execute(scr_shoot, 0, character, id, 180);
						}
					}
				}
			}
		
		}
		if (character == 5){
			if (key_shoot) && (reloadtimer <= 0) && (amountofbullets + 1 <= maxbullets) {
				if (onground) {
					if  ((key_right == 0) && (key_left == 0)){
						if (lastdirection == 1){
							script_execute(scr_slice, 0);
						}	
						if (lastdirection == -1){
							script_execute(scr_slice, 0);
						}
					}
				} else {
					if (lastdirection == 1){
						script_execute(scr_slice, 1);
					}	
					if (lastdirection == -1){
						script_execute(scr_slice, 1);
					}
				}
			}
		
		}
		if (character == 6) {
			if (key_shoot) && (reloadtimer <= 0) {
				if (onground) {
					if ((key_right == 0) && (key_left == 0)) {
						if (lastdirection == 1) {
						
							if (key_up_held) {
								script_execute(scr_cut, 45);
							}
							if (key_down_held) {
								script_execute(scr_cut, 315);
							}
							if (!key_up_held) && (!key_down_held){
								script_execute(scr_cut, 0);
							}
						}
						if (lastdirection == -1) {
							if (key_up_held) {
								script_execute(scr_cut, 135);
							}
							if (key_down_held) {
								script_execute(scr_cut, 225);
							}
							if (!key_up_held) && (!key_down_held){
								script_execute(scr_cut, 180);
							}
						
						}
					}
				}
			}
		}
		if (character == 7) || (character == 12) || (character == 13) || (character == 15) || (character == 16){
			if (key_shoot) && (reloadtimer <= 0) && (amountofbullets + 1 <= maxbullets) && (currentammo > 0) {
				if  (((key_right == 0) && (key_left == 0) && (key_jump == 0)) && !(key_jump_held) && (onground)){
					if (lastdirection == 1){
						script_execute(scr_shoot, 0, character, id, 0);
					}	
					if (lastdirection == -1){
						script_execute(scr_shoot, 0, character, id, 180);
					}
				}
			}
		
		}
		if (character == 10) {
			if (key_shoot) && (reloadtimer <= 0) && (amountofbullets + 1 <= maxbullets) && (currentammo > 0) && ((sliding == 0) || !(onground)){
				if  ((onground) && (key_right == 0) && (key_left == 0)) || ((!onground)) && (flying == 0){
					if (key_up_held) && !(key_down_held) {
						if (lastdirection == 1){
							script_execute(scr_shoot, 0, character, id, 45);
						}	
						if (lastdirection == -1){
							script_execute(scr_shoot, 0, character, id, 135);
						}
					}
					if !(key_up_held) && (key_down_held) {
						if (lastdirection == 1){
							script_execute(scr_shoot, 0, character, id, 315);	
						}
						if (lastdirection == -1){
							script_execute(scr_shoot, 0, character, id, 225);
						}
					}
					if !(key_up_held) && !(key_down_held) {
						if (lastdirection == 1){
							script_execute(scr_shoot, 0, character, id, 0);
						}
						if (lastdirection == -1){
							script_execute(scr_shoot, 0, character, id, 180);
						}
					}
				} else {
					if (lastdirection == 1){
						script_execute(scr_shoot, 0, character, id, 0);
					}
					if (lastdirection == -1){
						script_execute(scr_shoot, 0, character, id, 180);
					}
					if (flying == 1) && (amountofbullets + 2 <= maxbullets) {
						if (lastdirection == 1){
							script_execute(scr_shoot, 0, character, id, 45);
							script_execute(scr_shoot, 0, character, id, 315);
						}
						if (lastdirection == -1){
							script_execute(scr_shoot, 0, character, id, 135);
							script_execute(scr_shoot, 0, character, id, 225);
						}
					}
				}
			}
		}
		if (character == 11) {
			if (key_shoot) && (ring == 1) {
				if  ((onground) && (key_right == 0) && (key_left == 0)) || ((!onground)) {
					if (key_up_held) && !(key_down_held) {
						if (lastdirection == 1){
							script_execute(scr_ring, 45);
						}	
						if (lastdirection == -1){
							script_execute(scr_ring, 135);
						}
					}
					if !(key_up_held) && (key_down_held) {
						if (lastdirection == 1){
							script_execute(scr_ring, 315);	
						}
						if (lastdirection == -1){
							script_execute(scr_ring, 225);
						}
					}
					if !(key_up_held) && !(key_down_held) {
						if (lastdirection == 1){
							script_execute(scr_ring, 0);
						}
						if (lastdirection == -1){
							script_execute(scr_ring, 180);
						}
					}
				
				} else {
					if (lastdirection == 1){
						script_execute(scr_ring, 0);
					}
					if (lastdirection == -1){
						script_execute(scr_ring, 180);
					}
				
				}
			}
		}
	

	// fix this
		if !(flying) {
			if !(onground) {
				if (shoottimer > 0) && (character != 6) && (character != 7) && (character != 12) && (character != 13) && (character != 15) && (character != 16){
					if (lastdirection == 1) {
						if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
								sprite_index = jumpgunrightcharge;
								image_speed = 1.2;
							} else {
								if (chargetimer >= room_speed) {
									sprite_index = jumpgunrightcharge1;
									image_speed = 1.2;
								} else {
									sprite_index = jumpgunright;
									image_speed = 1;
									if (character == 10) {
										sprite_index = currentattack;
										image_speed = 1;
									}
								}
							}
						image_xscale = 1;
					}
	
					if (lastdirection == -1) {
						if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
								sprite_index = jumpgunrightcharge;
								image_speed = 1.2;
							} else {
								if (chargetimer >= room_speed) {
									sprite_index = jumpgunrightcharge1;
									image_speed = 1.2;
								} else {
									sprite_index = jumpgunright;
									image_speed = 1;
									if (character == 10) {
										sprite_index = currentattack;
										image_speed = 1;
									}
								}
							}
							image_xscale = -1;
					}
				} else {
			 
						if (lastdirection == 1) {
							if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
									sprite_index = jumprightcharge;
									image_speed = 1.2;
								} else {
									if (chargetimer >= room_speed) {
										sprite_index = jumprightcharge1;
										image_speed = 1.2;
									} else {
									if (character == 6) && (reloadtimer > 0) {
											sprite_index = jumpright2;
											image_speed = 0.6;
										} else {
											sprite_index = jumpright;
											image_speed = 0.6;
										
											if (character == 11) && (ring == 1) {
												sprite_index = spr_ring2jumpright;
												image_speed = 0.6;
											}
										}
									}
								}
								image_xscale = 1;
						}
	
						if (lastdirection == -1) {
							if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
									sprite_index = jumprightcharge;
									image_speed = 1.2;
								} else {
									if (chargetimer >= room_speed) {
										sprite_index = jumprightcharge1;
										image_speed = 1.2;
									} else {
										if (character == 6) && (reloadtimer > 0) {
											sprite_index = jumpright2;
											image_speed = 0.6;
										} else {
											sprite_index = jumpright;
											image_speed = 0.6;
										
											if (character == 11) && (ring == 1) {
												sprite_index = spr_ring2jumpright;
												image_speed = 0.6;
											}
										}
							
									}
						
						} 
						image_xscale = -1;
					}
				}
			} 
		} else {
			if (character == 10) {
				if (shoottimer <= 0) {
					if (key_up_held) || (key_down_held) || (key_right) || (key_left * -1) {	
						if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
							sprite_index = spr_basshoverrightcharge;
							image_speed = 1;
						} else {
							if (chargetimer >= room_speed) {
								sprite_index = spr_basshoverrightcharge1;
								image_speed = 1;
							} else {
								sprite_index = spr_basshoverright;
								image_speed = 1;
							}
						}
						image_xscale = lastdirection;
					} else {			
						if (chargetimer > superchargetimethreshhold) && (chargetimer < super2chargetime) {
							sprite_index = spr_basshoverrightcharge;
							image_speed = 1;
						} else {
							if (chargetimer >= room_speed) {
								sprite_index = spr_basshoverrightcharge1;
								image_speed = 1;
							} else {
								sprite_index = spr_basshoverright;
								image_speed = 0;
								image_index = 0;
							}
						}
						image_xscale = lastdirection;
					}
				} else {
					if (key_up_held) || (key_down_held) || (key_right) || (key_left * -1) {
						sprite_index = spr_basshovershootright;
						image_speed = 1;
						image_xscale = lastdirection;
					} else {
						sprite_index = spr_basshovershootright;
						image_index = 0;
						image_speed = 0;
						image_xscale = lastdirection;
					
					}
				}
			}
		}
	}
	
	
		if (character == 3) {
			if (specialtimer <= 0) {
				if ((sprite_index == jumpright) || (sprite_index = jumprightcharge) || (sprite_index = jumprightcharge1)) && (image_xscale = 1){
					shield.sprite_index = spr_protojumpshieldright;
					shield.image_xscale = lastdirection;
					shield.x = x + 11;
					shield.y = y - 15;
					shield.visible = true;	
				}
				if ((sprite_index == jumpright) || (sprite_index == jumprightcharge) || (sprite_index = jumprightcharge1)) && (image_xscale = -1){
					shield.sprite_index = spr_protojumpshieldright;
					shield.image_xscale = lastdirection;
					shield.x = x - 11;
					shield.y = y - 15;
					shield.visible = true;	
				}
				if !(((sprite_index == jumpright) || (sprite_index = jumprightcharge) || (sprite_index = jumprightcharge1)) || (specialtimer > 0)){
					shield.visible = false;
					shield.x = 0;
					shield.y = 0;
				}
			} else {
				shield.sprite_index = spr_protojumpshieldright;
				shield.image_xscale = lastdirection;
				shield.visible = true;
				shield.x = x + 8 * lastdirection;
				shield.y = y - 5;
			}
		}
		

	if (character == 1) || (character == 3) || (character == 9) || (character == 10) || (character == 14) {
		if (sprite_index == idleanimationright) || (sprite_index == idleanimationrightcharge) || (sprite_index == idleanimationrightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x;
			hurtbox.y = y + 4;
		}
		if (sprite_index == moveright) || (sprite_index == moverightcharge) || (sprite_index == moverightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x + (lastdirection * 2);
			hurtbox.y = y + 4;
		}
		if (sprite_index == movingattackright) || (sprite_index == movingattackrightcharge) || (sprite_index == movingattackrightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x - (lastdirection * 2);
			hurtbox.y = y + 4;
		}
		if (sprite_index == jumpright) || (sprite_index == jumprightcharge) || (sprite_index == jumprightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x + (move * 2);
			hurtbox.y = y;
		}
		if (sprite_index == jumpgunright) || (sprite_index == jumpgunrightcharge) || (sprite_index == jumpgunrightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x + (move * 2);
			hurtbox.y = y;
		}
		if (sprite_index == stillattackright) || (sprite_index == stillattackrightcharge) || (sprite_index == stillattackrightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x - (lastdirection * 2);
			hurtbox.y = y + 4;
		}
		if (sprite_index == slideright) {
			hurtbox.sprite_index = spr_20x12hitbox;
			hurtbox.x = x + (lastdirection * 3);
			hurtbox.y = y + (sprite_height / 2);
		}
		if (character == 3) {
			if (sprite_index == spr_protoshielddashright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x - (lastdirection * 2);
				hurtbox.y = y + 4;
			}
		}
		if (character == 10) {
			if (sprite_index == spr_bassshootdownright) || (sprite_index == spr_bassshootdownrightcharge) || (sprite_index == spr_bassshootdownrightcharge1) || (sprite_index == spr_bassshoottopright) || (sprite_index == spr_bassshoottoprightcharge) || (sprite_index == spr_bassshoottoprightcharge1) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x;
				hurtbox.y = y + 4;
			}
			if (sprite_index == spr_basshoverright) || (sprite_index == spr_basshoverrightcharge) || (sprite_index == spr_basshoverrightcharge1) || (sprite_index == spr_basshovershootright) || (sprite_index == spr_basshovershootrightcharge) || (sprite_index == spr_basshovershootrightcharge1) {
				hurtbox.sprite_index = spr_14x20hitbox;
				hurtbox.x = x + (lastdirection * 2);
				hurtbox.y = y;
			}
			if (sprite_index == spr_bassjumpshootdownright) || (sprite_index == spr_bassjumpshootdownrightcharge) || (sprite_index == spr_bassjumpshootrightcharge1) || (sprite_index == spr_bassjumpshootupright) || (sprite_index == spr_bassjumpshootuprightcharge) || (sprite_index == spr_bassjumpshootuprightcharge1) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x + (move * 2);
				hurtbox.y = y;
			}
			if (sprite_index == slideright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x + (lastdirection * 2);
				hurtbox.y = y + 4;
			}
		}
	} else {
		if (sprite_index == idleanimationright) || (sprite_index == idleanimationrightcharge) || (sprite_index == idleanimationrightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x;
			hurtbox.y = y + 4;
		}
		if (sprite_index == moveright) || (sprite_index == moverightcharge) || (sprite_index == moverightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x + (lastdirection * 2);
			hurtbox.y = y + 4;
		}
		if (sprite_index == jumpright) || (sprite_index == jumprightcharge) || (sprite_index == jumprightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x + (move * 2);
			hurtbox.y = y;
		}
		if (sprite_index == jumpgunright) || (sprite_index == jumpgunrightcharge) || (sprite_index == jumpgunrightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x + (move * 2);
			hurtbox.y = y;
		}
		if (sprite_index == stillattackright) || (sprite_index == stillattackrightcharge) || (sprite_index == stillattackrightcharge1) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x - (lastdirection * 2);
			hurtbox.y = y + 4;
		}
		if (sprite_index == slideright) {
			hurtbox.sprite_index = spr_12x20hitbox;
			hurtbox.x = x + (lastdirection * 2);
			hurtbox.y = y + 4;
		}
		if (character == 6) {
			if (sprite_index == spr_cutidleright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x;
				hurtbox.y = y + 4;
			}
			if (sprite_index == spr_cutjumpright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x + (move * 2);
				hurtbox.y = y;
			}
			if (sprite_index == spr_cutrunright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x + (lastdirection * 2);
				hurtbox.y = y + 4;
			}
		}
		if (character == 11) {
			if (sprite_index == spr_ringthrowright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x - (lastdirection * 2);
				hurtbox.y = y + 4;	
			}
			if (sprite_index == spr_ring2idleright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x;
				hurtbox.y = y + 4;
			}
			if (sprite_index == spr_ringjumpthrowright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x + (move * 2);
				hurtbox.y = y;
			}
			if (sprite_index == spr_ring2runright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x + (lastdirection * 2);
				hurtbox.y = y + 4;
			}
			if (sprite_index == spr_ring2jumpright) {
				hurtbox.sprite_index = spr_12x20hitbox;
				hurtbox.x = x + (move * 2);
				hurtbox.y = y;
			}
		}
	}


	if (specialtimer > 0) && (specialtimer <= 90) && (character == 13){
		image_xscale = 1;
		if (specialtimer >= 85) && (specialtimer <= 90) {
			sprite_index = spr_chillspecialattack;			
			image_index = 0;
		}
		if (specialtimer >= 80) && (specialtimer < 85) {
			sprite_index = spr_chillspecialattack;			
			image_index = 1;
		}
		if (specialtimer >= 60) && (specialtimer < 80) {
			sprite_index = spr_chillspecialattack;			
			image_index = 2;
			script_execute(scr_shoot, 2, character, id, 315);
			script_execute(scr_shoot, 2, character, id, 225);
		
		}
		if (specialtimer >= 55) && (specialtimer < 60) {
			sprite_index = spr_chillspecialattack;			
			image_index = 1;
		}
		if (specialtimer >= 0) && (specialtimer < 55) {
			sprite_index = spr_chillspecialattack;			
			image_index = 0;
		}
		y = stopy;
	}
	if (specialtimer > 0) && (character == 3) {
		sprite_index = spr_protoshielddashright;
		image_xscale = lastdirection;
		image_speed = 1;
	}

	if (room == bubbleroom) && (place_meeting(x, y, obj_waterdown)) && (place_meeting(x, y, obj_water)) && (splashanimation == 0) {
		if (sign(vsp) == -1) {
			splashanimation = instance_create_layer(x, y, "Effects", obj_splashanimation);
			splashanimation.player = id;
		}
		if (sign(vsp) == 1) {
			splashanimation = instance_create_layer(x, y + 10, "Effects", obj_splashanimation);
			splashanimation.player = id;
		}
	} 
}