/// @description Insert description here
// You can write your code in this editor

if (hhealth <= 0) {
	instance_create_layer(x, y, "Instances", obj_death);
	instance_destroy();
}

if (invincibility != 1) || (room == battleroom){
	key_right = keyboard_check(ord("D"));
//the variable key_right is set to a 1, 0 value based on whether the right key is down
	key_left = -keyboard_check(ord("A"));
//the variable key_left is being set to the negative value of whether the left key is down
	key_jump = keyboard_check_pressed(ord("G"));

	key_jump_held = keyboard_check(ord("G"));
} else {
	
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	key_jump_held = 0;
	if (lastdirection == 1){
		
		
	} 
	if (lastdirection == -1){
		
	}
}

if (key_right == 1) {
	lastdirection = 1;
}
if (key_left == -1) {
	lastdirection = -1;
}


move = key_left + key_right;

hsp = move * movespeed;

if ((vsp < 0) && (!key_jump_held)) vsp = max(vsp, -jumpspeed / 8);

if (vsp < 10) vsp += grav;


if (place_meeting(x, y + 1,obj_wall))

{
	
    currentbelt = instance_place(x, y + 1, obj_wall);
    vsp = key_jump * -jumpspeed;
	hsp += currentbelt.facing;
	
}

//Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall))
{
    while(!place_meeting(x + sign(hsp), y, obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_wall))
{
	
    while(!place_meeting(x, y + sign(vsp), obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;



//animation
if (invincibility != 1) || (room == battleroom) {
	shoottimer--;
	reloadtimer--;
//still
	if (((key_right == 0) && (key_left == 0) && (key_jump == 0)) && !(keyboard_check(ord("G"))))
	{
		if (keyboard_check_pressed(ord("F"))) && (shoottimer <= 0) && (amountofbullets <= 1) && (reloadtimer <= 0) {
			if (lastdirection == 1){
				sprite_index = spr_throwright;
				image_speed = 0.5;
			
			}
			if (lastdirection == -1){
				sprite_index = spr_throwleft;
				image_speed = 0.5;
			
			}
		} else {
			if (shoottimer > 0){
				if (lastdirection == 1){
					sprite_index = spr_throwright;
					image_speed = 0.0;
				}
				if (lastdirection == -1) {
					sprite_index = spr_throwleft;
					image_speed = 0.0;
				}
			} else {
				if (lastdirection == 1){
					sprite_index = spr_metalstillright;
					image_speed = 0;
				}
				if (lastdirection == -1) {
					sprite_index = spr_metalstillleft;
					image_speed = 0;
				}
			
			}
		
		}
	}

	if ((key_right == 1) && (key_left == 0) && (key_jump == 0) && !(keyboard_check(ord("G")))) {
		sprite_index = spr_metalrunright;
		image_speed = 0.6;
		
	}
	if ((key_right == 0) && (key_left == -1) && (key_jump == 0) && !(keyboard_check(ord("G")))) {
		sprite_index = spr_metalrunleft;
		image_speed = 0.6;
		
	}

	if (keyboard_check_pressed(ord("F"))) && (reloadtimer <= 0) && (amountofbullets <= 1) {
		shoottimer = 20;
		reloadtimer = 60;
		if  (((key_right == 0) && (key_left == 0) && (key_jump == 0)) && !(keyboard_check(ord("G")))){
			if (lastdirection == 1){
				global.currentpersonshooting = id;
				currentbullet = instance_create_layer(x + 14, y, "Instances", obj_bullet);
				currentbullet.player = id;
				currentbullet.direction = 0;
				currentbullet.speed = 5;
				currentbullet.bullettype = 2;
				currentbullet.player = id;
				amountofbullets++;
			}
			if (lastdirection == -1){
				global.currentpersonshooting = id;
				currentbullet = instance_create_layer(x - 14, y, "Instances", obj_bullet);
				currentbullet.player = id;
				currentbullet.direction = 180;
				currentbullet.speed = 5;
				currentbullet.bullettype = 2;
				
				amountofbullets++;
			}
		} else {
			if (!(place_meeting(x, y + 1,obj_wall))) {
				if (lastdirection == 1){
					global.currentpersonshooting = id;
					currentbullet = instance_create_layer(x + 14, y, "Instances", obj_bullet);
					currentbullet.player = id;
					currentbullet.direction = 315;
					currentbullet.speed = 5;
					currentbullet.bullettype = 2;
					currentbullet.player = id;
					amountofbullets++;
				}
				if (lastdirection == -1){
					global.currentpersonshooting = id;
					currentbullet = instance_create_layer(x - 14, y, "Instances", obj_bullet);
					currentbullet.player = id;
					currentbullet.direction = 225;
					currentbullet.speed = 5;
					currentbullet.bullettype = 2;
					currentbullet.player = id;
					amountofbullets++;
				}
			}
		}
		
	}

// fix this
	if (!(place_meeting(x, y + 1,obj_wall)) && (!keyboard_check(ord("F")))) {
		if (shoottimer > 0){
			if (lastdirection == 1) {
				sprite_index = spr_throwairright;
				image_speed = 0;
			}
	
			if (lastdirection == -1) {
				sprite_index = spr_throwairleft;
				image_speed = 0;
			}
		} else {
			if (lastdirection == 1) {
				sprite_index = spr_metaljumpright;
				image_speed = 0;
			}
	
			if (lastdirection == -1) {
				sprite_index = spr_metaljumpleft;
				image_speed = 0;
			}
		}
	}
}


