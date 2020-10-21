/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "Effects", obj_minideath);
audio_play_sound(sound_enemydeath, 1, false);
instance_destroy();