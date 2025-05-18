///s_bases_reja(grid);

with o_base {
    ds_grid_set_disk(argument0,
        (x - 32) / m_celda - 1,
        (y - m_desfmap) / m_celda - 1, 96 / m_celda, 0);
}
var xx = room_width / 2;
var yy = m_desfmap + (room_height - m_desfmap) / 2 + 128;
ds_grid_set_disk(argument0,
    (xx - 32) / m_celda - 1,
    (yy - m_desfmap) / m_celda - 1, 96 / m_celda, 0);

