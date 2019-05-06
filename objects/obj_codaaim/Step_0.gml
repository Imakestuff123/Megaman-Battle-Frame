/// @description Insert description here
// You can write your code in this editor
if (parent == tracking) instance_destroy();
if !(instance_exists(parent)) instance_destroy();
if !(instance_exists(tracking)) instance_destroy();
x = tracking.x;
y = tracking.y;
if (parent.aimrecticle == 0) instance_destroy();