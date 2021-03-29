/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(SCORE_X, SCORE_Y, "SCORE: "+string(score), c_black, c_black, c_black, c_black, 1);
draw_set_halign(fa_right);
draw_text_color(LIVES_X, LIVES_Y, "LIVES: "+string(lives), c_black, c_black, c_black, c_black, 1);