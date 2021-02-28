/// @description Input handling
// You can write your code in this editor


#region Input handling
// PLAYER MOVEMENT
if (keyboard_check(vk_left)) {
	if (x > obj_border_side.sprite_width) {
		if (speed < MOVE_SPEED) {
			motion_set(DIRECTION_LEFT, MOVE_SPEED);
		}
		else {
			motion_add(DIRECTION_LEFT, SPEED_INCREMENT);
		}
	}
}

if (keyboard_check(vk_right)) {
	if (x + sprite_width < room_width - obj_border_side.sprite_width) {
		if (speed < MOVE_SPEED) {
			motion_set(DIRECTION_RIGHT, MOVE_SPEED);
		}
		else {
			motion_add(DIRECTION_RIGHT, SPEED_INCREMENT);
		}
	}
}


if (keyboard_check_released(vk_left)) {
	motion_set(DIRECTION_LEFT, NO_SPEED);
}

if (keyboard_check_released(vk_right)) {
	motion_set(DIRECTION_RIGHT, NO_SPEED);
}


// BALL LAUNCHING
if (keyboard_check_pressed(vk_space) && global.isBallResting) {
	var ball_id = instance_find(obj_ball, 0);
	var ball_direction = DIRECTION_UP;
	
	if (keyboard_check(vk_left)) {
		ball_direction = NORTH_WEST;	
	}
	if (keyboard_check(vk_right)) {
		ball_direction = NORTH_EAST;	
	}
	
	ball_id.vspeed = -BALL_SPEED;
	ball_id.direction = ball_direction;
	
	global.isBallResting = false;
}
#endregion