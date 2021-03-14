/// @description Insert description here
// You can write your code in this editor

#macro MIN_LEFT 135
#macro MAX_LEFT 105
#macro SPECIAL_LEFT 95
#macro MIN_RIGHT 45
#macro MAX_RIGHT 75
#macro SPECIAL_RIGHT 85

vspeed = -vspeed;

//LEFT SPECIAL
if (x == other.x) {
	direction = SPECIAL_LEFT;
}

//LEFT
if (x > other.x && x < other.x+other.sprite_width/2 - 5) {
	direction = MIN_LEFT+x*(MAX_LEFT-MIN_LEFT)/(other.x+1+other.sprite_width/2 -5+1);
}


//CENTER
if (x > other.x+other.sprite_width/2 - 5 && x < other.x+other.sprite_width/2 + 5) {
	hspeed = -hspeed;
}


//RIGHT
if (x > other.x+other.sprite_width/2 + 5 && x < other.x + other.sprite_width ) {
	direction = MIN_RIGHT+x*(MAX_RIGHT-MIN_RIGHT)/(other.sprite_width/2+5+other.x+other.sprite_width-1+1);
}


// RIGHT SPECIAL
if (x == other.x + other.sprite_width) {
	direction = SPECIAL_RIGHT;
}