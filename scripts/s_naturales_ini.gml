///s_naturales_ini(grid);

var xx, yy, pp;
repeat ceil((room_width * room_height) / (power(m_celda, 2) * 80)) {
    xx = random(room_width);
    yy = random(room_height);
    pp = s_mi_dir(xx - 32, yy - m_desfmap, argument0);
    if pp != -1 and random(1) > pp and
            xx > 32 and xx < room_width - 32 and
            yy > m_desfmap and yy < room_height - 32 and
            !collision_circle(xx, yy, 96, o_bloque, true, false) {
        instance_create(xx, yy, o_natural);
    }
}
repeat ceil((room_width * room_height) / (power(m_celda, 2) * 40)) {
    xx = random(room_width);
    yy = random(room_height);
    pp = s_mi_dir(xx - 32, yy - m_desfmap, argument0);
    if pp != -1 and random(1) > pp and
            xx > 32 and xx < room_width - 32 and
            yy > m_desfmap and yy < room_height - 32 and
            !collision_circle(xx, yy, 64, o_bloque, true, false) and
            !collision_circle(xx, yy, 32, o_decorado, true, false) {
        instance_create(xx, yy, o_decorado);
    }
}

