/// @description Insert description here
// You can write your code in this editor
if (instance_exists(parent)) {
	if (instance_exists(parent)) {
		with (parent) { 
			other.key_right = key_right;
			other.key_left = key_left;
			other.key_jump = key_jump;
			other.key_jump_held = key_jump_held;
			other.key_shoot = key_shoot;
			other.key_down = key_down
			other.key_down_held = key_down_held
			other.key_up_held = key_up_held;
		}
	}
	reloadtimer--;
	shoottimer--;
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
	if (instance_exists(parent)) {
		if (key_right == 1) {
			lastdirection = 1;
		}
		if (key_left == -1) {
			lastdirection = -1;
		}
	}

	if (instance_exists(parent)) {
		move = key_right + key_left;
		hsp = move * movespeed + ffriction;
		if ((key_right == 0) && (key_left == 0)) {
			frictiontimer -= stillfrictiondecreasespeed;
		}
	}
	if !(onground)  {
		frictiontimer -= airfrictiondecreasespeed;
	}
	if (frictiontimer >= maxfrictiontimer) {
		if (ffriction > 0) {
			ffriction -= frictionincreaserate;
		}
		if (ffriction < 0) {
			ffriction += frictionincreaserate;
		}
	}

	if ((vsp < 0) && (!key_jump_held)) vsp = max(vsp, -jumpspeed / 8);

	if (vsp < 10) vsp += (grav * ggravity);

	if (place_meeting(x, y + 1, obj_item)) {
		ffriction = 0;
		vsp = key_jump * -jumpspeed;
	
		currentitem = instance_place(x, y + 1, obj_item);
		if (currentitem.itemtype == 2) {
			hsp += currentitem.move;
		
		}
	
	if (place_meeting(x, y - 1, obj_wall)) {
		if (invincibility == 0) {
			instance_destroy();
			}
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
					if (key_right) && (lastdirection == 1) {
						if (ffriction + frictionincreaserate <= maxfrictionspeed) {
							ffriction += frictionincreaserate;
						}
					frictiontimer = 0;
					}
					if ((key_left * -1)) && (lastdirection == -1) {
						if (ffriction - frictionincreaserate >= maxfrictionspeed * -1) {
							ffriction -= frictionincreaserate;
						}
					frictiontimer = 0;
				}
			}
	
		}
	}

	if (place_meeting(x + hsp, y, obj_wall)) 
	{
	    while(!place_meeting(x + sign(hsp), y, obj_wall))
	    {
	        x += sign(hsp);
	    }
	
		hsp = 0;
		ffriction = 0;
		sliding = 0;
	}

	if (place_meeting(x + hsp, y, obj_item))
	{
		hsp = 0;
	}

	x += hsp;

	//Vertical Collision
	if (place_meeting(x, y + vsp, obj_wall)) //|| (place_meeting(x, y + vsp, obj_clone)) || (place_meeting(x, y + vsp, obj_player))
	{
	
		while(!place_meeting(x, y + sign(vsp), obj_wall))
		{
			y += sign(vsp);
		}
		vsp = 0;
		sliding = 0;
	
	
	
	}

	if (place_meeting(x, y + vsp, obj_item)) //|| (place_meeting(x, y + vsp, obj_clone)) 
	{
	
	    vsp = 0;
	}
	y += vsp;

	if (((key_right == 0) && (key_left == 0) && (onground))){
			if (key_shoot) && (shoottimer <= 0) && (parent.amountofbullets + 1 <= parent.maxbullets) && (reloadtimer <= 0) {
				sprite_index = spr_geminishootright;
				image_speed = 1;	
				image_xscale = lastdirection;
			} else {
				if (shoottimer > 0) && (parent.currentammo > 0) {
					sprite_index = spr_geminishootright;
					image_speed = 1;			
					image_xscale = lastdirection;
				} else {
					sprite_index = spr_geminiidleright;
					image_speed = 0;
					image_xscale = lastdirection;
				}
		
			}
		}
			if ((key_right == 1) && (key_left == 0) && (key_jump == 0) && (onground)) {
					sprite_index = spr_geminirunright;
					image_speed = 0.6;				
					image_xscale = 1;
				}
			if ((key_right == 0) && (key_left == -1) && (onground)) {
					sprite_index = spr_geminirunright;
					image_speed = 0.6;			
					image_xscale = -1;
				}
	
		if (key_shoot) && (room != menu) && (reloadtimer <= 0) && (parent.amountofbullets + 1 <= parent.maxbullets) && (parent.currentammo > 0) {
			if  (((key_right == 0) && (key_left == 0) && (key_jump == 0)) && !(key_jump_held) && (onground)){
				if (lastdirection == 1){
					script_execute(scr_cloneshoot, 0, 12);
				}	
				if (lastdirection == -1){
					script_execute(scr_cloneshoot, 180, 12);
				}
			}
		}
	
		if !(onground) {
			sprite_index = spr_geminijumpright;
			image_speed = 0.6;
			image_xscale = lastdirection;
		}
		
	
} else {
	instance_destroy();
}
							
						
					
		
			
		