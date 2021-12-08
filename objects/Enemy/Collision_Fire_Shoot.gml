/// @description Insert description here
// You can write your code in this editor

hp -= other.damage;

damaged = true;

if (hp <= 0){
	death = true
	state = states.death;
}
