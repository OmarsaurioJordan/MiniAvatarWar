///s_mapa_ini();

// obtener nombre de archivo de imagen
var fff = "mapa.png";
if file_exists("tmp.png") {
    fff = "tmp.png";
}
// crear lienzo y cargar imagen
var lienzo = surface_create((room_width - 64) / m_celda,
    (room_height - m_desfmap - 32) / m_celda);
var img = sprite_add(fff, 1, false, false, 0, 0);
// dibujar imagen en el lienzo
surface_set_target(lienzo);
draw_clear_alpha(c_white, 1);
draw_sprite_ext(img, 0, 0, 0,
    surface_get_width(lienzo) / sprite_get_width(img),
    surface_get_height(lienzo) / sprite_get_height(img),
    0, c_white, 1);
surface_reset_target();
// obtener datos para la rejilla del mapa
var reja = ds_grid_create(surface_get_width(lienzo), surface_get_height(lienzo));
ds_grid_clear(reja, -1);
var pp;
for (var ww = 0; ww < ds_grid_width(reja) - 2; ww++) {
    for (var hh = 0; hh < ds_grid_height(reja) - 2; hh++) {
        pp = surface_getpixel(lienzo, ww, hh);
        pp = mean(colour_get_red(pp), colour_get_green(pp), colour_get_blue(pp));
        pp /= 255;
        if pp <= 0.95 {
            ds_grid_set(reja, ww, hh, pp / 0.95);
        }
    }
}
// cargar cosas
s_bases_ini();
s_bases_reja(reja);
s_suelo_ini(reja);
s_naturales_ini(reja);
// crear grilla para navegacion
mundo = s_path_ini(m_celda, true);
for (var ww = 0; ww < ds_grid_width(reja) - 3; ww++) {
    for (var hh = 0; hh < ds_grid_height(reja) - 3; hh++) {
        if ds_grid_get(reja, ww, hh) == -1 {
            ds_grid_set(mundo, ww + 32 / m_celda, hh + m_desfmap / m_celda, -1);
        }
    }
}
// calcular navegacion
camino = s_path_ini(m_celda, false);
s_path_find(room_width / 2, m_desfmap +
    (room_height - m_desfmap) / 2 + 128, camino, m_celda, mundo);
// liberar memoria
surface_free(lienzo);
sprite_delete(img);
ds_grid_destroy(reja);

