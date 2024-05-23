//if (!is_talking) {
//	//pnjNotTalking();
//	if (place_meeting(x, y, objMainCharacter) && keyboard_check_pressed(vk_enter)){
//		is_talking = true;
//		global.talking++;
//	};
//} else if (is_talking) {
//	//pnjTalking();
//	draw_sprite(sprTextBox, 0, room_width / 2, room_height / 0.75);
//	draw_set_halign(fa_center);
//	draw_set_color(c_black);
//	draw_text(room_width / 2, room_height / 0.7, message_list[current_message]);

//	if (keyboard_check_pressed(vk_enter)){
//		current_message++;
//	};

//	if (current_message >= message_end){
//		current_message = 0;
//		is_talking = false;
//		global.talking--;
//	};

//}