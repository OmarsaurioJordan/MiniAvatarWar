globalvar c_clan, c_oscu, c_blan, c_char;

// colores originales
c_clan[4] = make_colour_rgb(240, 100, 20); // fuego
c_clan[3] = make_colour_rgb(240, 240, 100); // aire
c_clan[2] = make_colour_rgb(100, 150, 230); // agua
c_clan[1] = make_colour_rgb(80, 210, 50); // tierra
c_clan[0] = make_colour_rgb(170, 130, 80); // neutral
// colores oscurecidos y aclarados
for (var i = 4; i >= 0; i--) {
    // cero sera primer color
    c_oscu[i] = merge_colour(c_clan[i], c_black, 0.25); // pelo, ropa, vidaL
    c_char[i] = merge_colour(c_clan[i], c_black, 0.9); // texto, nombre
    c_clan[i] = merge_colour(c_clan[i], c_white, 0.25); // piel
    c_blan[i] = merge_colour(c_clan[i], c_white, 0.5); // vidaH, cara, tool, chat, proy
}

