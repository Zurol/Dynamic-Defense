life--;
if (!explosivo){
	if (speed_loss <=0){
		if (speed >= 9 and subiendo){	
			speed = speed*0.99;
			image_angle = image_angle - 1;
			direction = direction - 1;
		} else {	
			subiendo = false;
			speed = speed*1.1;
			if (speed >= 10){
				speed = 10;
			}
			image_angle = image_angle - 1;
			direction = direction - 1;
		}
	}

} else{
	//if (speed_loss <=0){
		//if (speed >= 9 and subiendo){	
		//	speed = speed*0.99;
		//	image_angle = image_angle - 1;
		//	direction = direction - 1;
	//	} else {	
		//	subiendo = false;
		//		speed = speed*1.1;
		//		if (speed >= 10){
		//			speed = 10;
		//		}
		//		image_angle = image_angle - 1;
		//		direction = direction - 1;
		//}
	//}

}

if (life <= 0 and explosive){
	exist = false;
}

if (!exist){
	instance_destroy();

	if (explosive){
		if (1){
			child = instance_create_layer(x, y, layer, Ice_Shoot);	
			audio_play_sound(s_IceShoot,5,false);
			child.direction = 270;
			child.image_angle = 270;
			
			child2 = instance_create_layer(x, y, layer, Ice_Shoot);	
			audio_play_sound(s_IceShoot,5,false);
			child2.direction = 310;
			child2.image_angle = 310;
			
			child2 = instance_create_layer(x, y, layer, Ice_Shoot);	
			audio_play_sound(s_IceShoot,5,false);
			child2.direction = 230;
			child2.image_angle = 230;
			
			
		} else {
			child = instance_create_layer(x, y, layer, Fire_Shoot);	
			audio_play_sound(s_FireShoot,5,false);
			child.direction = 270;
			child.image_angle = 270;
			
			child2 = instance_create_layer(x, y, layer, Fire_Shoot);	
			audio_play_sound(s_FireShoot,5,false);
			child2.direction = 310;
			child2.image_angle = 310;
			
			child2 = instance_create_layer(x, y, layer, Fire_Shoot);	
			audio_play_sound(s_FireShoot,5,false);
			child2.direction = 230;
			child2.image_angle = 230;
		}
	}
	

}
speed_loss--;
