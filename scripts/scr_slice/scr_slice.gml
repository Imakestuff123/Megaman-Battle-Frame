shoottimer = 20;

reloadtimer = reloadtime
type = argument0;
audio_play_sound(sound_slash, 1, false);
//type 0 = down
// type 1 = air
if (saber == 0) {
	saber = instance_create_layer(x, y, "Instances", obj_saber);
	saber.player = id;
	if (lastdirection == 1) {
		saber.sprite_index = spr_saberright;
	}
	if (lastdirection == -1) {
		saber.sprite_index = spr_saberleft;
	}
}

