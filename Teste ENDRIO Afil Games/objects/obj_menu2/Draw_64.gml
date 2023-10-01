draw_set_font(ft_menu);//setando fonte e cores
draw_set_color(c_white);
//
var dist = 55; //variavel para dar espaçamento das strings
var Wgui = display_get_gui_width();
var Hgui = display_get_gui_height();
var x1 = Wgui/2
var y1 = Hgui/2
var mx = device_mouse_x_to_gui(0);//setando variavel do device do mouse para o gui
var my = device_mouse_y_to_gui(0);
//
draw_set_halign(fa_center);//alinhando o draw
draw_set_valign(fa_center);

for(var i = 0; i < index_max2;i++)
{

	var Wstring = string_width(options2[i]);
	var Hstring = string_height(options2[i]);
	var y2 = y1 + (dist *i);
	
	if(index2 == i or point_in_rectangle(mx, my, x1 - Wstring / 2, y2 - Hstring / 2, x1 +Wstring/ 2, y2 +Hstring / 2))
	{
		draw_set_color(c_red);
		index2 = i;
	}
	else
	{
		draw_set_color(c_white);
	}
	draw_text(x1,y2, options2[i])
}
///

//Draw da janela de Volume

	if(index2 == 1)
	{
		draw_text (770, 440, OpVolume[indVolume]);
	if keyboard_check_pressed(vk_right)
		{
			indVolume++;
			if (indVolume >= indVolumeMax)
			{
				indVolume = 0;
			}
		}
		if keyboard_check_pressed(vk_left)
		{
			indVolume--;
			if (indVolume < 0)
			{
				indVolume = indVolumeMax -1;
			}
		}
	}
draw_set_font(-1);
