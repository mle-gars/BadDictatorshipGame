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
		playstate = "Run";
	}else if(keyboard_check(vk_up) && !place_meeting(x, y-5, objCollision)){
		y-= hSpeed;
		playstate = "Walk";
	}

	if(keyboard_check(vk_down) && keyboard_check(vk_control) && !place_meeting(x, y+5, objCollision)){
		y+= hSpeed*2;
		playstate = "Run";
	}
	else if(keyboard_check(vk_down) && !place_meeting(x, y+5, objCollision)){
		y+= hSpeed;
		playstate = "Walk";
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