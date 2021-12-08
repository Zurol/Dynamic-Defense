/// @description Insert description here
// You can write your code in this editor
draw_set_font(Start);
draw_set_color(c_white);
draw_set_halign(fa_center);

var alpha = dsin(current_time/6);
alpha = clamp(alpha,0,1);
//draw_set_alpha(dsin(current_time/6));
draw_text_color(room_width/2, room_height/2 +170, "Press Space",c_white,c_white,c_white,c_white,alpha);
//draw_set_alpha(1)
draw_set_halign(fa_left);