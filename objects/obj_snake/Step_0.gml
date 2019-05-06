/// @description Insert description here
// You can write your code in this editor

//Get the player's input
if (place_meeting(x, y, obj_waterdown)) {
	grav = 0.35;
} else {
	if (place_meeting(x, y, obj_water)) {
		grav = 0.1;
	}
}
switch (ddirection) {
	case 1:
	hsp = move * movespeed;
	if (vsp < 10) vsp += grav;
	if (move == 1) {
		if (place_meeting(x + 1, y, obj_wall)) {
			ddirection = 2;
			move = 1;
			sprite_index = spr_snakebulletupright;
		}
	}
	if (move == -1) {
		if (place_meeting(x - 1, y, obj_wall)) {
			sprite_index = spr_snakebulletupleft;
			ddirection = 3;
			move = -1;
		}
	}
	if (move == 0) {
		if (place_meeting(x, y + 1, obj_wall)) {
			if (sprite_index == spr_snakebulletright) {
				move = 1;
			}
			if (sprite_index == spr_snakebulletleft) {
				move = -1;
			}
		}
	}
	break;


	case 2:
		vsp = move * -1 * movespeed;
		if (hsp < 10) hsp += grav;
		sprite_index = spr_snakebulletupright;
		if (place_meeting(x, y + 1, obj_wall)) {
			ddirection = 1;
			sprite_index = spr_snakebulletright;
		}
		if (place_meeting(x, y - 1, obj_wall)) {
			ddirection = 4;
			move = -1;
			y -= 12;
			sprite_index = spr_snakebulletleftdown;
		}
		
	break;
	

	case 3:
		vsp = move * movespeed;
		if (hsp < 10) hsp -= grav;
		sprite_index = spr_snakebulletupleft;
		if (place_meeting(x + 1, y, obj_wall)) {
			ddirection = 2;
			move = 1;
			sprite_index = spr_snakebulletupleft;
		}
		if (place_meeting(x, y - 1, obj_wall)) {
			ddirection = 4;
			move = 1;
			y -= 12;
			sprite_index = spr_snakebulletrightdown;
		}
		break;
	case 4:
		hsp = move * movespeed;
		if (vsp < 10) vsp -= grav;
		
	break;
	}
	
 
if (place_meeting(x,y+1,obj_wall))
{
    currentbelt = instance_place(x, y + 1, obj_wall);
	hsp += currentbelt.facing;
}
 
//Horizontal Collision
if (place_meeting(x + hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
	
}
x += hsp;
 
//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

if (!(place_meeting(x + 1, y, obj_wall)) && (!(place_meeting(x - 1, y, obj_wall))) && (!(place_meeting(x, y - 1, obj_wall)))){
	ddirection = 1;
	if (move == 1) {
		sprite_index = spr_snakebulletright;
		}
	if (move == -1) {
		sprite_index = spr_snakebulletleft;
	}
}
if (x == lastx) && (y == lasty) {
	//if you want magioc snakes set it to 2
	ddirection = 1;
	if (move == 1) {
		sprite_index = spr_snakebulletright;
		}
	if (move == -1) {
		sprite_index = spr_snakebulletleft;
	}
	move = 0;
	y += 3;
}
lastx = x;
lasty = y;


lasttimer--;
if (lasttimer <= 0) {
	instance_destroy();
}

