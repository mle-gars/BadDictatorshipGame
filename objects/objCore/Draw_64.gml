if (!objSign.is_talking) {
	//pnjNotTalking();
	if (collision_rectangle(objSign.x - 10, objSign.y - 10, objSign.x + 10, objSign.y + 10, objMainCharacter, false, false) && keyboard_check_pressed(vk_enter)){
		objSign.is_talking = true;
		global.talking++;
	};
} else if (objSign.is_talking) {
	//pnjTalking();
	show_debug_message(objSign.current_message)
	draw_sprite(sprTextBox, 0, window_get_width()/2, 100);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_set_font(fntAnnouncement)
	draw_text_ext(window_get_width()/2, 90, objSign.message_list[objSign.current_message], 20, 200);

	if (keyboard_check_pressed(vk_enter)){
		objSign.current_message++;
	};

	if (objSign.current_message >= objSign.message_end){
		objSign.current_message = 0;
		objSign.is_talking = false;
		global.talking--;
	};

}