if (keyboard_check_pressed(vk_down))
{
	audio_play_sound(menuEffect, 1, false)
	menu +=1;
} 

else if (keyboard_check_pressed(vk_up))
{
	audio_play_sound(menuEffect, 1, false)
	menu -=1;
}

if (menu >2)
{
	menu=0;
} 
else if (menu <0)
{
	menu=2;
}

if (menu == 0)
{
	image_index=0;
	if (keyboard_check(vk_enter))
	{
		audio_stop_sound(backgroung_song)
		room_goto(1)
		
	}
	
}

if (menu == 2)
{
	image_index=2;
	if (keyboard_check(vk_enter))
	{
		game_end();
	}
}





switch(menu)
{
	case 0:
image_index= 0;
break;

case 1:
image_index= 1;
break;

case 2:
image_index= 2;
break;

}

