/// @description Insert description here
// You can write your code in this editor


image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;

if (mouse_check_button(mb_left) && cooldown < 1 && Energia.current_energy > 0)
{
	if (global.elemento){
		child = instance_create_layer(x, y, layer, Fire_Shoot);	
		audio_play_sound(s_FireShoot,5,false);
		
		if (global.tiro){
			child.explosive = true;
		}
	} else {
		child = instance_create_layer(x, y, layer, Ice_Shoot);
		audio_play_sound(s_IceShoot,5,false);
		
		if (global.tiro){
			child.explosive = true;
		}
	}
	
	
	if (global.proyectiles){
		if (global.elemento){
			child2 = instance_create_layer(x, y - 10, layer, Fire_Shoot);	
			child3 = instance_create_layer(x, y + 10, layer, Fire_Shoot);	
		} else {
			child2 = instance_create_layer(x, y - 10, layer, Ice_Shoot);
			child3 = instance_create_layer(x, y + 10, layer, Ice_Shoot);
		}
		
		child2.direction = point_direction(x, y - 10, mouse_x - 50, mouse_y - 50);
		child3.direction = point_direction(x, y + 10, mouse_x + 50, mouse_y + 50);
		
		if (global.tiro){
			child2.explosive = true;
			child3.explosive = true;
		}
	} else {

			child.image_xscale = child.image_xscale * 2;
			child.image_yscale = child.image_yscale * 2;
			child.damage = child.damage * 2;
			
			if (global.tiro){
				child.explosive = true;
			}

	}
	
	child.shoot_angle = image_angle;
	
	cooldown = 15;
	Energia.current_energy -= child.energy_cost;
}


if (mouse_check_button(mb_right) && cooldown < 1 && Energia.current_energy > 0)
{
	if (!global.elemento){
		child = instance_create_layer(x, y, layer, Fire_Shoot);	
		audio_play_sound(s_FireShoot,5,false);
		if (global.tiro){
			child.explosive = true;
		}
	} else {
		child = instance_create_layer(x, y, layer, Ice_Shoot);
		audio_play_sound(s_IceShoot,5,false);
		if (global.tiro){
			child.explosive = true;
		}
	}
	
	
	if (!global.proyectiles){
		if (!global.elemento){
			child2 = instance_create_layer(x, y - 10, layer, Fire_Shoot);	
			child3 = instance_create_layer(x, y + 10, layer, Fire_Shoot);	
		} else {
			child2 = instance_create_layer(x, y - 10, layer, Ice_Shoot);
			child3 = instance_create_layer(x, y + 10, layer, Ice_Shoot);
		}
		
		child2.direction = point_direction(x, y - 10, mouse_x - 50, mouse_y - 50);
		child3.direction = point_direction(x, y + 10, mouse_x + 50, mouse_y + 50);
		
		if (global.tiro){
			child2.explosive = true;
			child3.explosive = true;
		}
	} else {

			child.image_xscale = child.image_xscale * 2;
			child.image_yscale = child.image_yscale * 2;
			child.damage = child.damage * 2;
			if (global.tiro){
				child.explosive = true;
			}

	}
	
	child.shoot_angle = image_angle;
	
	cooldown = 15;
	Energia.current_energy -= child.energy_cost;
}



cooldown--;