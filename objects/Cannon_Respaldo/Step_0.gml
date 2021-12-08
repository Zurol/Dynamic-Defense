/// @description Insert description here
// You can write your code in this editor


image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;

if (mouse_check_button(mb_left) && cooldown < 1 && Energia.current_energy > 0)
{
	child = instance_create_layer(x, y, layer, Ice_Shoot);
	audio_play_sound(s_FireShoot,5,false);
	child.shoot_angle = image_angle;
	cooldown = 15;
	Energia.current_energy -= child.energy_cost;
}



if (mouse_check_button(mb_right) && cooldown < 1 && Energia.current_energy > 0)
{
	child = instance_create_layer(x, y, layer, Fire_Shoot);
	audio_play_sound(s_IceShoot,5,false);
	child.shoot_angle = image_angle;
	cooldown = 20;
	Energia.current_energy -= child.energy_cost;
}


cooldown--;