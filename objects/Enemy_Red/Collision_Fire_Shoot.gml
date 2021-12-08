/// @description Insert description here
// You can write your code in this editor

hp += other.damage;
image_xscale = image_xscale * 1.1;
image_yscale = image_yscale * 1.1;

if (hp <= 0){
	death = true
	state = states.death;
}
