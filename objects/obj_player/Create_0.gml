/// @description Insert description here
// You can write your code in this editor

//grav = 0.3;
hsp = 0;
vsp = 0;
jumpspeed = 7;
movespeed = 2;
move = 0;
image_speed = 0;

lastdirection = 1;

shoottimer = 0;
reloadtimer = 0;
amountofbullets = 0;
maxhhealth = 23;
hhealth = maxhhealth;


invincibility = 0;
//player = 1;
/*
1 = mega
2 = metal
3 = proto
4 = quick
5 = zero
6 = cut
7 = skull
8 = snake
9 = roll
10 = bass
11 = ring
12 = gemini
13 = chill
14 = coda
15 = elec
16 = fire
*/
ggravity = 1;
blues = 0;
chargetimer = 0;
bursttimer = 0;

maxammo = maxhhealth * 4;
currentammo = maxammo;

superchargetimethreshhold = room_speed / 10;
super1chargetime = room_speed * (5 / 8);
super2chargetime = room_speed * 1.5;

sliding = 0;
slidingtimer = 0;
slidespeed = 4;
infinitesliding = 0;
slidingtime = 35;
smokeexists = 0;

saber = 0;
skullshield = 0;

ammoregentimer = 0;
ammoregenrate = 120;

ffriction = 0;
frictiontimer = 0;
//frictionsettings
maxfrictiontimer = 60;
frictionincreaserate = 0.05;
maxfrictionspeed = movespeed * 1.25;

stillfrictiondecreasespeed = 2;
airfrictiondecreasespeed = 5;


/* normal frictionsettings
maxfrictiontimer = 60;
frictionincreaserate = 0.05;
maxfrictionspeed = movespeed * 1.25;

stillfrictiondecreasespeed = 1;
airfrictiondecreasespeed = 3;
*/
onground = 0;

currentitem = 0;
item = 0;

currentattack = 0;

ring = 0;

knockbacktimer = 0;
knockbackspeed = 5;
knockbacktime = 20;

//damage multiplyer - 1.2 = more taken

specialtimer = 0;
comparex = 0;
comparey = 0;
stopy = 0;

splashanimation = 0;
flying = 0;
completefreeze = 0;
if (room != menu) marker = 0;

currentflyspeed = 0;

stuntimer = 0;
stuntype = 0;
//1 = elecstun

aimrecticle = 0;
flameshield = 0;

hurtbox = instance_create_layer(x, y, "Effects", obj_hurtbox);
hurtbox.parent = id;
hurtbox.visible = global.dev;