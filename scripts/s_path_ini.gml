///s_path_ini(talla_celda, con_obstaculos);
// arg0: talla de la celda
// arg1: true si llenarla de obstaculos
// ret: id de grid para obstaculos

// datos generales de la rejilla
var wmax = ceil(room_width / argument0);
var hmax = ceil(room_height / argument0);
if argument1 {
    // crear rejilla especial para poner instancias solidas
    var motg = mp_grid_create(0, 0, wmax, hmax, argument0, argument0);
    with o_bloque {
        mp_grid_add_instances(motg, id, true);
    }
    // crear rejilla navegable
    var zona = ds_grid_create(wmax, hmax);
    ds_grid_clear(zona, 1);
    // poner influencia de objetos solidos, traidos de la otra rejilla
    for (var h = 0; h < hmax; h++) {
        for (var w = 0; w < wmax; w++) {
            if mp_grid_get_cell(motg, w, h) == -1 {
                ds_grid_add_region(zona, w - 2, h - 2, w + 2, h + 2, 1);
            }
        }
    }
    for (var h = 0; h < hmax; h++) {
        for (var w = 0; w < wmax; w++) {
            ds_grid_set(zona, w, h, min(4, ds_grid_get(zona, w, h)));
        }
    }
    // poner los objetos solidos, traidos de la otra rejilla
    for (var h = 0; h < hmax; h++) {
        for (var w = 0; w < wmax; w++) {
            if mp_grid_get_cell(motg, w, h) == -1 {
                ds_grid_set(zona, w, h, -1);
            }
        }
    }
    // poner limites de mundo
    ds_grid_set_region(zona, 0, 0, wmax, ceil(m_desfmap / argument0), -1);
    ds_grid_set_region(zona, 0, 0, 1, hmax, -1);
    ds_grid_set_region(zona, wmax - 3, 0, wmax, hmax, -1);
    ds_grid_set_region(zona, 0, hmax - 3, wmax, hmax, -1);
    // finalizar
    mp_grid_destroy(motg);
}
else {
    // crear rejilla de direcciones
    var zona = ds_grid_create(wmax, hmax);
    ds_grid_clear(zona, -1);
}
return zona;

