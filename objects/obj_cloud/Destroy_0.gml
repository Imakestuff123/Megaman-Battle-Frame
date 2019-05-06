/// @description Insert description here
// You can write your code in this editor
if (instance_exists(parent)) parent.amountofbullets--;
audio_play_sound(sound_enemydeath, 1, false);
instance_create_layer(x, y, "Effects", obj_minideath);