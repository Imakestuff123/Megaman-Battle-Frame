itemtype = argument0;

if !(place_meeting(x + 16, y - 1, obj_wall)) && !(place_meeting(x + 16, y - 1, obj_player)) && (lastdirection == 1) {
	item = instance_create_layer(x + 16, y - 1, "Instances", obj_item);
	if (itemtype == 1)  {
		item.sprite_index = spr_item1left;
		item.timer = 360;
	}
	if (itemtype == 2) {
		item.sprite_index = spr_item2right;
		item.timer = 180;
	}
	item.itemtype = itemtype;
	item.player = id;
	currentitem++;
	currentammo -= 3;
}

if !(place_meeting(x - 16, y - 1, obj_wall))  && !(place_meeting(x - 16, y - 1, obj_player)) &&  (lastdirection == -1) {
	item = instance_create_layer(x - 16, y - 1, "Instances", obj_item);
	if (itemtype == 1) {
		item.sprite_index = spr_item1right;
		item.timer = 360;
	}
	if (itemtype == 2)  {
		item.sprite_index = spr_item2left;
		item.timer = 180;
	}
	item.itemtype = itemtype;
	item.player = id;
	currentitem++;
	currentammo -= 5;
}

