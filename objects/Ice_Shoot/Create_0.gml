/// @description Insert description here
// You can write your code in this editor
energy_cost = 5;
count = 5;
subiendo = true;
explosivo = false;

if (global.tiro){
	direction = point_direction(x, y, mouse_x, mouse_y);
	//direction = direction + random_range(-4, 4);	
	image_angle = direction;
	speed = 10;
} else {
	direction = point_direction(x, y, mouse_x, mouse_y);
	image_angle = direction;
	speed = 10;
}

