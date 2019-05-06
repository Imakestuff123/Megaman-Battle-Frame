/// @description Insert description here
// You can write your code in this editor
x += 8;
y += 8;

randomize();
var i = irandom_range(0, 8) 
switch (i) {
	case 0: 
		sprite_index = spr_weaponrefillsmall;
		randomize();
		amountrefilled = irandom_range(5, 15);
		break;
	case 1:
		sprite_index = spr_weaponrefill;
		randomize();
		amountrefilled = irandom_range(25, 35);
		break;
	case 2:
		sprite_index = spr_healthrefillsmall;
		randomize();
		amountrefilled = irandom_range(3, 5);
		break;
	case 3:
		sprite_index = spr_healthrefill;
		randomize();
		amountrefilled = 10;
		break;
	case 4:
		sprite_index = spr_weaponrefill;
		randomize();
		amountrefilled = irandom_range(25, 35);
		break;
	case 5: 
		sprite_index = spr_weaponrefill;
		randomize();
		amountrefilled = irandom_range(25, 35);
		break;
	case 6:
		sprite_index = spr_weaponrefillsmall;
		randomize();
		amountrefilled = irandom_range(5, 15);
		break;
	case 7:
		sprite_index = spr_weaponrefillsmall;
		randomize();
		amountrefilled = irandom_range(5, 15);
		break;
	case 8:
		sprite_index = spr_weaponrefillsmall;
		randomize();
		amountrefilled = irandom_range(5, 15);
		break;
		
}
image_speed = 1;
weaponrefilltimer = 0;

timer = 3000;
grav = 0.8;
hsp = 0;
vsp = 0;
jumpspeed = 0;
movespeed = 0;
ggravity = 1;
cutblade = 0;