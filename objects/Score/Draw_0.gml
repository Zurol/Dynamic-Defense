/// @description Insert description here
// You can write your code in this editor

draw_self();

if(focus)
{
	draw_set_color(c_white);
	draw_set_font(Planes_ValMore);
	draw_set_halign(fa_center);
	draw_text(x + 60, y - 24, texto);
}