draw_set_font(ft_menu);
draw_set_color(c_white);
//
var dist = 55; //variavel para dar espaçamento das strings
var Wgui = display_get_gui_width();
var Hgui = display_get_gui_height();
var x1 = Wgui/2
var y1 = Hgui/2
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
//
draw_set_halign(fa_center);
draw_set_valign(fa_center);

for(var i = 0; i < index_max;i++)
{

	var Wstring = string_width(options[i]);
	var Hstring = string_height(options[i]);
	var y2 = y1 + (dist *i);
	
	if(index == i or point_in_rectangle(mx, my, x1 - Wstring / 2, y2 - Hstring / 2, x1 +Wstring/ 2, y2 +Hstring / 2))
	{
		draw_set_color(c_red);
		index = i;
	}
	else
	{
		draw_set_color(c_white);
	}
	draw_text(x1,y2, options[i])
}
draw_set_font(-1);
