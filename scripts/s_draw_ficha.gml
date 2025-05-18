///s_draw_ficha(x, y, totales, muertes, actuales, cazados, clan);

draw_sprite_ext(d_ficha, argument6, argument0, argument1,
    1, 1, 0, c_white, 1);
draw_sprite_ext(d_ficha, 5, argument0, argument1,
    1, 1, 0, c_white, 1);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
var e = 1.3;
draw_text_transformed_colour(argument0 + 46, argument1 + 22,
    string(argument2),
    e, e, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_colour(argument0 + 46, argument1 + 56,
    string(argument3),
    e, e, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_colour(argument0 + 152, argument1 + 22,
    string(argument4),
    e, e, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_colour(argument0 + 152, argument1 + 56,
    string(argument5),
    e, e, 0, c_black, c_black, c_black, c_black, 1);

