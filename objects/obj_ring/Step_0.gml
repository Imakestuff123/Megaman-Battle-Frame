/// @description Insert description here
// You can write your code in this editor
if (thrown == 0) {
	hsp = move * movespeed;
	if (vsp < 10) vsp += grav;

	if (place_meeting(x, y + 1,obj_wall))
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
}
if (thrown == 1) {
	if (direction == 0) || (direction == 180) {
		randomize();
		y += random_range(0.1, 0.5);
	}
	if  (place_meeting(x + speed, y, obj_wall)) || (place_meeting(x - speed, y, obj_wall)) || (place_meeting(x, y, obj_wall)) || (place_meeting(x + speed, y, obj_skullshield)) || (place_meeting(x - speed, y, obj_skullshield)) || (place_meeting(x, y, obj_skullshield)) || (place_meeting(x + speed, y, obj_item)) || (place_meeting(x - speed, y, obj_item)) || (place_meeting(x, y, obj_item))  {
		thrown = 0;
		audio_play_sound(sound_ricochet, 1, false);
		speed = 0;
		sprite_index = spr_ringdown;
		image_speed = 0;
	}
}