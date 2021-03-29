/// @description Insert description here
// You can write your code in this editor
event_inherited();

var ball = instance_find(obj_ball, 0);

with(instance_create_layer(ball.x, ball.y, "Instances", obj_ball)) {
	motion_set(ball.direction * 1.10, BALL_SPEED);
}

with(instance_create_layer(ball.x, ball.y, "Instances", obj_ball)) {
	motion_set(ball.direction * 0.9, BALL_SPEED);	
}

score += 15;