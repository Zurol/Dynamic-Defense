/// @description Insert description here
// You can write your code in this editor

x -= dx;

if (counter<=0){
	damaged = false;
}

if (damaged){
	image_blend = c_red;
	state = states.alert;
	counter--;
} else if (death && d_counter <= 0){
	audio_play_sound(s_DeathBlop,5,false);
	instance_destroy();
	global.score += 5;
		
} else if (death){
	image_blend = c_white;
	state = states.death;
	d_counter--;
} else {
	image_blend = c_white;
	state = states.idle;
	counter = 10;
}


if(state == states.idle){
	sprite_index = spr_EnemigoAzul;
	
}else if(state == states.wander){
	sprite_index = spr_EnemigoAzul;
	
}else if(state == states.alert){
	sprite_index = spr_EnemigoAzul_Dmg;

}else if(state == states.death){
	sprite_index = spr_EnemigoAzul_Death;

}else if(state == states.attack){

}