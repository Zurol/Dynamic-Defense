/// @description Insert description here
// You can write your code in this editor

if (current_energy <= total_energy && cooldown < 1){
	current_energy++;
	cooldown = 7;
}
current_height = current_energy / total_energy;

image_yscale = max_height * current_height;

cooldown--;