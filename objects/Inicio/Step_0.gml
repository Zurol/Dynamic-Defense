/// @description Insert description here
// You can write your code in this editor

texto = "SCORE: " + string(cuenta);
focus = false;

if (start_time <= 0 && to_play){
	audio_play_sound(s_countdown,5,false);
	audio_sound_gain(s_background, .6, 3300);
	to_play = false;
}
start_time--;

