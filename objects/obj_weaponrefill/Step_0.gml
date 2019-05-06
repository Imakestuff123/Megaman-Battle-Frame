/// @description Insert description here
// You can write your code in this editor
timer--;
if (timer <= 300) {
	image_speed = 3;
}
if (timer <= 0) {
	instance_destroy();
}
if (weaponrefilltimer > 0) {
	weaponrefilltimer++;
	audio_play_sound(sound_regain, 1, false);
	if (instance_exists(player)) {
	if (player.character != 5) && (player.character != 6){
		if ((player.currentammo + 1) < (player.maxammo)) {
			if (sprite_index == spr_weaponrefill) || (sprite_index == spr_weaponrefillsmall) {
				player.currentammo++;
			}
		}
	} else {
		if ((player.hhealth + 1) < player.maxhhealth) {
			if (sprite_index == spr_weaponrefill) || (sprite_index == spr_weaponrefillsmall) {
				player.hhealth++;
			}
		}
	}
	if ((player.hhealth + 1) < player.maxhhealth) {
		if (sprite_index == spr_healthrefill) || (sprite_index == spr_healthrefillsmall) {
			player.hhealth++;
		}
	}
	if (sprite_index == spr_healthrefillsmall) || (sprite_index = spr_weaponrefillsmall) {
		with (obj_itemspawner) {
			timescollected -= 0.1;
		}
	}
	}
}

if (weaponrefilltimer > amountrefilled) {
	instance_destroy();
}


if (vsp < 10) vsp += (grav * ggravity);



if (place_meeting(x + hsp, y, obj_wall))
{
    while(!place_meeting(x + sign(hsp), y, obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

if (place_meeting(x, y + vsp, obj_wall))
{
    while(!place_meeting(x, y + sign(vsp), obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

if (cutblade == 0) && (place_meeting(x, y, obj_cut)) {
	cutblade = instance_place(x, y, obj_cut);
}
if (instance_exists(cutblade)) {
	if (cutblade != 0) {
		x = cutblade.x;
		y = cutblade.y;
	}
}