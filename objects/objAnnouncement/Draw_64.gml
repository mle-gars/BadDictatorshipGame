// Draw textbox
if (show_announcement_box) {
	draw_sprite(sprAnnouncement,0, window_get_width()/2, window_get_height()/2);
}


// Draw text
if (show_announcement) {
	draw_set_font(fntAnnouncement);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	
	if (current_announcement < announcement_end) {
		draw_text_ext(180, 60, announcement_list[current_announcement], 20, 400);
	}
}

// Display announcement
if (keyboard_check_pressed(vk_enter)){
		current_announcement++;
	};

if (current_announcement >= announcement_end){
	current_announcement = 0;
	show_announcement = false;
	show_announcement_box = false;
};
