/// @description Insert description here
// You can write your code in this editor

timer--;
if !(instance_exists(player)){
	instance_destroy();
}
with (player) {
	if (hhealth <= 0) {
		other.timer = 0;
	}
	other.x = x;
	other.y = y;
}
if (timer <= 0){
	with (player){
		invincibility = 0;
	}
	instance_destroy();
}