/// @description Insert description here
// You can write your code in this editor
if (room == rm_lvl1) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_gui);
	draw_text_color(SCORE_X, SCORE_Y, "SCORE: "+string(score), c_black, c_black, c_black, c_black, 1);
	draw_set_halign(fa_right);
	draw_text_color(LIVES_X, LIVES_Y, "LIVES: "+string(lives), c_black, c_black, c_black, c_black, 1);
}

if (room == rm_gameOver) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_gameOver);
	draw_text_color(GAME_OVER_X, GAME_OVER_Y, "GAME\nOVER", c_white, c_white, c_white, c_white, 1);	
}