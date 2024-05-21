/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

playstate = "Idle"

// Movement

if(keyboard_check(vk_right) && keyboard_check(vk_control)){
	x+= hSpeed*2;
	image_xscale = 1;
	playstate = "Run";
}else if(keyboard_check(vk_right)){
	x+= hSpeed;
	image_xscale = 1;
	playstate = "Walk";
}

if(keyboard_check(vk_left) && keyboard_check(vk_control)){
	x-= hSpeed*2;
	image_xscale = -1;
	playstate = "Run";
}else if(keyboard_check(vk_left)){
	x-= hSpeed;
	image_xscale = -1;
	playstate = "Walk";
}

if(keyboard_check(vk_up) && keyboard_check(vk_control)){
	y-= hSpeed*2;
	playstate = "Run";
}else if(keyboard_check(vk_up)){
	y-= hSpeed;
	playstate = "Walk";
}

if(keyboard_check(vk_down) && keyboard_check(vk_control)){
	y+= hSpeed*2;
	playstate = "Run";
}
else if(keyboard_check(vk_down)){
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