/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(ord("Q")))
{
	if (keyboard_counter <= 0){
		global.elemento = !global.elemento;
		keyboard_counter = 10;
	}
}


if (keyboard_check(ord("W")))
{
	if (keyboard_counter <= 0){
		global.proyectiles = !global.proyectiles;
		keyboard_counter = 10;
	}
}



if (keyboard_check(ord("E")))
{
	if (keyboard_counter <= 0){
		global.tiro = !global.tiro;
		keyboard_counter = 10;
	}
}



keyboard_counter--;


if (global.elemento){
	obj_Snow_A.image_blend = c_white;
	obj_Snow_A.visible = false;
	obj_Spark_A.image_blend = c_red;
	obj_Spark_A.visible = true;
	
	obj_Snow_B.image_blend = c_blue;
	obj_Snow_B.visible = false;
	obj_Spark_B.image_blend = c_white;
	obj_Spark_B.visible = false;
	
} else {
	obj_Snow_A.image_blend = c_white;
	obj_Snow_A.visible = true;
	obj_Spark_A.image_blend = c_red;
	obj_Spark_A.visible = false;
	
	obj_Snow_B.image_blend = c_blue;
	obj_Snow_B.visible = true;
	obj_Spark_B.image_blend = c_white;
	obj_Spark_B.visible = false;
}


if (global.proyectiles){
	obj_Multi_A.image_blend = c_white;
	obj_Multi_A.visible = true;
	obj_Big_A.image_blend = c_red;
	obj_Big_A.visible = false;
	
	obj_Multi_B.image_blend = c_blue;
	obj_Multi_B.visible = true;
	obj_Big_B.image_blend = c_white;
	obj_Big_B.visible = false;
	
} else {

	
	obj_Multi_A.image_blend = c_white;
	obj_Multi_A.visible = false;
	obj_Big_A.image_blend = c_red;
	obj_Big_A.visible = true;
	
	obj_Multi_B.image_blend = c_blue;
	obj_Multi_B.visible = false;
	obj_Big_B.image_blend = c_white;
	obj_Big_B.visible = false;
}

if (global.tiro){
	obj_Explode_A.image_blend = c_white;
	obj_Explode_A.visible = true;
	obj_Linear_A.image_blend = c_red;
	obj_Linear_A.visible = false;
	
	obj_Explode_B.image_blend = c_blue;
	obj_Explode_B.visible = true;
	obj_Linear_B.image_blend = c_white;
	obj_Linear_B.visible = false;
	
} else {
	obj_Explode_A.image_blend = c_white;
	obj_Explode_A.visible = false;
	obj_Linear_A.image_blend = c_red;
	obj_Linear_A.visible = true;
	
	obj_Explode_B.image_blend = c_blue;
	obj_Explode_B.visible = false;
	obj_Linear_B.image_blend = c_white;
	obj_Linear_B.visible = false;
}

if (global.vidas >= 1){
	L1.image_blend = c_red;
}else {
	L1.image_blend = c_dkgray;
}


if (global.vidas >= 2){
	L2.image_blend = c_red;
}else {
	L2.image_blend = c_dkgray;
}


if (global.vidas >= 3){
	L3.image_blend = c_red;
}else {
	L3.image_blend = c_dkgray;
}



if (global.vidas >= 4){
	L4.image_blend = c_red;
}else {
	L4.image_blend = c_dkgray;
}



if (global.vidas >= 5){
	L5.image_blend = c_red;
}else {
	L5.image_blend = c_dkgray;
}

if (global.vidas <= 0){
	room_goto(rm_GameOver);
}