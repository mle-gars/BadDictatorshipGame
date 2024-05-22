if (global.talking == 0){
	playerMovement();
} else if(global.talking == 1){
	playerTalking();
}

if (keyboard_check_pressed(vk_space) && place_meeting(x, y, objSign)) {
    objSign.is_talking = 1;
    global.talking = 1;
}