/// @description Insert description here
// You can write your code in this editor

damaged = false;
death = false;
hp = 10;

enum states {
	idle, 
	wander, 
	alert, 
	attack,
	death
}

state = states.idle;
