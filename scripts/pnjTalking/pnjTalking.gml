function pnjTalking(){
	xwidth = display_get_width();
	yheight = display_get_height();

	draw_sprite(sprTextBox, 0, xwidth/2, yheight/0.75);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(xwidth/2, yheight/0.75, message[i]);

	if (keyboard_check_pressed(vk_enter)){
		i++;
	};

	if (i > message_end){
		i = 0;
		is_talking--;
		global.talking--;
	};

}
	