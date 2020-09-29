/// @description Draw the text

// Draws both box and text
if (active_box)
{
	draw_self();
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y, text);
}
