/// @description Insert description here
// You can write your code in this editor

randomize();
cooldown = irandom_range(room_speed * 15, room_speed * 30);
image_alpha = 0;
timescollected = 0;
if (room == battleroom) {
		randomize();
		var i = irandom_range(0, 4);
		switch (i) {
			case 0:
				x = 4 * 16;
				y = 5 * 16;
				break;
				
			case 1:
				x = 60 * 16;
				y = 4 * 16;
				break;
				
			case 2:
				x = 60 * 16;
				y = 18 * 16;
				break;
				
			case 3:
				x = 4 * 16;
				y = 18 * 16;
				break;
			case 4:
				x = 14 * 16;
				y = 41 * 16;
				break;
		}
	}
if (room == flashroom) {
	randomize();
		var i = irandom_range(0, 4);
		switch (i) {
			case 0:
				x = 25 * 16;
				y = 42 * 16;
				break;
				
			case 1:
				x = 29 * 16;
				y = 42 * 16;
				break;
				
			case 2:
				x = 19 * 16;
				y = 9 * 16;
				break;
				
			case 3:
				x = 58 * 16;
				y = 34 * 16;
				break;
			case 4:
				x = 30 * 16;
				y = 19 * 16;
				break;
		}
	}
if (room == bubbleroom) {
	randomize();
		var i = irandom_range(0, 4);
		switch (i) {
			case 0:
				x = 3 * 16;
				y = 11 * 16;
				break;
				
			case 1:
				x = 2 * 16;
				y = 41 * 16;
				break;
				
			case 2:
				x = 59 * 16;
				y = 38 * 16;
				break;
				
			case 3:
				x = 35 * 16;
				y = 27 * 16;
				break;
			case 4:
				x = 61 * 16;
				y = 12 * 16;
				break;
		}
}
if (room == elecroom) {
	randomize();
		var i = irandom_range(0, 2);
		switch (i) {
			case 0:
				x = 8 * 16;
				y = 0 * 16;
				break;
				
			case 1:
				x = 20 * 16;
				y = 0 * 16;
				break;
				
			case 2:
				x = 34 * 16;
				y = 0 * 16;
				break;
				
		}
}
if (room == gutsroom) {
	randomize();
		var i = irandom_range(0, 3);
		switch (i) {
			case 0:
				x = 2 * 16;
				y = 16 * 16;
				break;
				
			case 1:
				x = 27 * 16;
				y = 1 * 16;
				break;
				
			case 2:
				x = 47 * 16;
				y = 34 * 16;
				break;
			case 3:
				x = 24 * 16;
				y = 5 * 16;
				break;
				
		}
}
if (room == shadowroom) {
		randomize();
		var i = irandom_range(0, 4);
		switch (i) {
			case 0:
				x = 2 * 16;
				y = 4 * 16;
				break;
				
			case 1:
				x = 34 * 16;
				y = 6 * 16;
				break;
				
			case 2:
				x = 2 * 16;
				y = 27 * 16;
				break;
				
			case 3:
				x = 32 * 16;
				y = 34 * 16;
				break;
			case 4:
				x = 33 * 16;
				y = 34 * 16;
				break;
		}
	}
	

	