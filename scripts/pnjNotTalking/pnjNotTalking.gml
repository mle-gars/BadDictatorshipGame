function pnjNotTalking(){
	if (place_meeting(x, y, objMainCharacter) && keyboard_check_pressed(vk_enter)){
	is_talking++;
	global.talking++;
	};

}