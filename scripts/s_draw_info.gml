///s_draw_info(x, y);

draw_sprite(d_info, 0, argument0, argument1);

// nombre de la zona
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_transformed_colour(argument0 + 146, argument1 + 30,
    war_zona,
    1.3, 1.3, 0, c_black, c_black, c_black, c_black, 1);

// velocidad simulacion
draw_text_transformed_colour(argument0 + 36, argument1 + 44,
    string(war_speed) + "X",
    1.5, 1.5, 0, c_black, c_black, c_black, c_black, 1);

// tiempo
var minu = o_control.tiempo_sim / 60;
var segu = frac(minu) * 60;
minu = string(floor(minu));
if string_length(minu) == 1 {
    minu = "0" + minu;
}
segu = string(floor(segu));
if string_length(segu) == 1 {
    segu = "0" + segu;
}
draw_text_transformed_colour(argument0 + 117, argument1 + 60,
    minu + " : " + segu,
    1.3, 1.3, 0, c_black, c_black, c_black, c_black, 1);

// tipo de pelea
if war_pelea == m_pelea_dual {
    draw_sprite(d_boton, 26, argument0 + 210, argument1 + 63);
}
else if war_pelea == m_pelea_cruz {
    draw_sprite(d_boton, 27, argument0 + 210, argument1 + 63);
}
else if war_pelea == m_pelea_azar {
    draw_sprite(d_boton, 28, argument0 + 210, argument1 + 63);
}
else {
    draw_sprite(d_boton, 11 + war_pelea, argument0 + 210, argument1 + 63);
}

