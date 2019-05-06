/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_geminiidleright
grav = 0.3;
hsp = 0;
vsp = 0;
jumpspeed = 8;
randomize();
movespeed = random_range(2, 2.5);
image_speed = 0;

lastdirection = 1;
shoottimer = 0;
reloadtimer = 0;
amountofbullets = 0;

invincibility = 0;
ggravity = 1;
ffriction = 0;
frictiontimer = 0;
//frictionsettings
maxfrictiontimer = 60;
frictionincreaserate = 0.05;
maxfrictionspeed = movespeed * 1.25;

stillfrictiondecreasespeed = 1;
airfrictiondecreasespeed = 3;

multiplicationrate = 3;

character = 12;

reloadtime = 5;

if (place_meeting(x, y, obj_wall)) instance_destroy();