
if (keyboard_check_pressed(vk_down) && index < index_max) //Check para descer nas opções do menu
{
	index++
	if(index > 3)
	{
		index = 1;
	}
}
else if (keyboard_check_pressed(vk_up) && index < index_max)//Check para subir nas opções do menu
{
	index--
	if(index <= 0)
	{
		index = 3;
	}
}

//Checks de açoes dos botoes do menu em suas respectivas funções

if (keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)) //Botão jogar
{
	if (index == 1)
	{
		room_goto(rm_gameplay);
	}
}
if (keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)) //Botão opções
{
	if (index == 2)
	{
		room_goto(rm_menu2)
	}
}
if (keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)) //Botão sair
{
	if (index == 3)
	{
		var sair = show_question("Deseja sair do jogo?")
		if sair = true
		{
			game_end();
		}
	}
}

