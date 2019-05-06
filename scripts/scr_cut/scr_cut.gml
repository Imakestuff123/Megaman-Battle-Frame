shoottimer = 30;

reloadtimer = 1;
ddirection = argument0;

cutblade = instance_create_layer(x, y, "Effects", obj_cut);
cutblade.player = id;

cutblade.direction = ddirection;