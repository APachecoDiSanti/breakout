/// @description Insert description here
// You can write your code in this editor

//LEFT
if (x <= other.x) {
	hspeed = -hspeed;
}

//RIGHT
if (x >= other.x + other.sprite_width) {
	hspeed = -hspeed;
}

// TOP
if (y <= other.y) {
	vspeed = -vspeed;
}

// BELOW
if (y >= other.y + other.sprite_height) {
	vspeed = -vspeed;
}
