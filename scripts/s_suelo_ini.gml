///s_suelo_ini(grid);

for (var ww = 0; ww < ds_grid_width(argument0); ww++) {
    for (var hh = 0; hh < ds_grid_height(argument0); hh++) {
        if ds_grid_get(argument0, ww, hh) != -1 {
            tile_add(d_suelo, 64 * irandom(6), 0, 64, 64,
                32 + (ww + 0.5) * m_celda,
                m_desfmap + (hh + 0.5) * m_celda,
                10);
        }
    }
}

