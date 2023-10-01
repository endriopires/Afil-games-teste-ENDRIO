if (keyboard_check_pressed(vk_down) && index2 < index_max2) //Check para descer nas opções do menu
{
	index2++
	if(index2 > 3)
	{
		index2 = 1;
	}
}
else if (keyboard_check_pressed(vk_up) && index2 < index_max2)//Check para subir nas opções do menu
{
	index2--
	if(index2<= 0)
	{
		index2 = 3;
	}
}

if (keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)) //Botão fullscreen
{
	if (index2 == 2)
	{
	 if window_get_fullscreen()
	    {
	        window_set_fullscreen(false);
	    }
    else
	    {
	        window_set_fullscreen(true);
	    }
	}
}
if (keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)) //Botão voltar
{
	if (index2 == 3)
	{
			room_goto(rm_menu);
	}
}
