/// @description Insert description here
// You can write your code in this editor

if (cooldown < 1 && level_count > 0)
{
	layer_set_visible(layer_resume, false);
	
	if (to_play){
		//audio = audio_play_sound(s_background,3,true);
		//audio = sound
		to_play = false;
	}
	
	if (level_count % 3 == 0) {
		child = instance_create_layer(x, y+32, layer, Enemy_Blue);
	} else if (level_count % 2 == 0) {
		child = instance_create_layer(x, y+32, layer, Enemy_Red);
	} else {
		child = instance_create_layer(x, y+32, layer, Enemy);
	}
	cooldown = 45;
	level_count--;
	
	if (big_boy){
		child.image_xscale = 3;
		child.image_yscale = 3;
		child.x -= 20;
		big_boy = false;
		child.dx = 1.1;
		cooldown = 50;
	}
	//child_life_bar = instance_create_layer(x, y, layer, LifeBar);
}
if (level_count == 0) { // Cambio de nivel
	level_count = level * 2 - level;
	cooldown = level * 100 + 100;
	level++;
	big_boy = true;
	
}

if (level == 0) {
	//sprite_inicio = layer_get_id("Inicio");
	//layer_sprite_index(sprite_inicio, 3);
	
	level++;
	level_count++;
	cooldown = 70;
	layer_set_visible(layer_resume, false);
}


cooldown--;