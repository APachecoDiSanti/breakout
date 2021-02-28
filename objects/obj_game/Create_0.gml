/// @description Insert description here
// You can write your code in this editor
global.isBallResting = true;

lives = 3;
score = 0;

instance_create_layer(
	obj_player.x + obj_player.sprite_width/2,
	obj_player.y - obj_player.sprite_height/2,
	"Instances",
	obj_ball
);