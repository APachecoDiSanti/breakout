/// @description Insert description here
// You can write your code in this editor
if (instance_number(obj_ball) < 1 && room != rm_gameOver) {
	lives--;
	global.isBallResting = true;
	
	obj_player.x = room_width/2 - obj_player.sprite_width/2;
	
	instance_create_layer(
		obj_player.x + obj_player.sprite_width/2,
		obj_player.y - obj_player.sprite_height/2,
		"Instances",
		obj_ball
	);
}

if (lives < 0 && room != rm_gameOver) {
	room_goto(rm_gameOver);
}