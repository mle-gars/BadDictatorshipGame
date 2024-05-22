function playerMovement(){
	
	playstate = "Idle"

	// Movement

	if(keyboard_check(vk_right) && keyboard_check(vk_control) && !place_meeting(x+5, y, objCollision)){
		x+= hSpeed*2;
		image_xscale = 1;
		playstate = "Run";
	}else if(keyboard_check(vk_right) && !place_meeting(x+5, y, objCollision)){
		x+= hSpeed;
		image_xscale = 1;
		playstate = "Walk";
		
	}

	if(keyboard_check(vk_left) && keyboard_check(vk_control) && !place_meeting(x-5, y, objCollision)){
		x-= hSpeed*2;
		image_xscale = -1;
		playstate = "Run";
		
	}else if(keyboard_check(vk_left) && !place_meeting(x-5, y, objCollision)){
		x-= hSpeed;
		image_xscale = -1;
		playstate = "Walk";
	}
	
	if(keyboard_check(vk_up) && keyboard_check(vk_control) && !place_meeting(x, y-5, objCollision)){
		y-= hSpeed*2;
		playstate = "Jump";
		fallSpeed = -vSpeed -3;
	}else if(keyboard_check(vk_up) && !place_meeting(x, y-5, objCollision)){
		y-= hSpeed;
		playstate = "Jump";
		fallSpeed = -vSpeed -3;
	}

	if(keyboard_check(vk_down) && keyboard_check(vk_control) && !place_meeting(x, y+5, objCollision)){
		y+= hSpeed*2;
		playstate = "Run";
	}
	else if(keyboard_check(vk_down) && !place_meeting(x, y+5, objCollision)){
		y+= hSpeed;
		playstate = "Walk";
	}


	if(fallSpeed < 10)
	{
	    fallSpeed += 0.5;
	}

	if (!place_meeting(x , y + fallSpeed, [objCollision])){
	    y += fallSpeed;
	}

	
	
	// Sprite Change
	if(playstate == "Walk"){
		sprite_index = sprMainCharacterWalk;
	}else if(playstate == "Idle"){
		sprite_index = sprMainCharacterIdle;
	}else if(playstate == "Run"){
		sprite_index = sprMainCharacterRun;
	}else if(playstate == "Jump"){
		sprite_index = sprMainCharacterJump;
	}
	

}