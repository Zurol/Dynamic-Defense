/// @description Insert description here
// You can write your code in this editor
if (explosive){
	child = instance_create_layer(x, y, layer, Ice_Shoot);	
	audio_play_sound(s_IceShoot,5,false);
	child.direction = 360 - child.direction;
	child.image_angle = child.direction;
	cooldown = 15;
}

exist = false;