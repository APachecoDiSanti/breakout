/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (hitPoints == 0) {
	var powerup = choose(POWERUPS);
	instance_create_layer(x, y, "Instances", powerup);
}