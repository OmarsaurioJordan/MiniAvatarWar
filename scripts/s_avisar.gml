///s_avisar(id, dist_vision);

with o_avatar {
    if id != argument0 and estado != m_est_seguir {
        if !s_enemy(argument0, id) and
                point_distance(x, y, argument0.x, argument0.y) < argument1 and
                !collision_line(x, y, argument0.x, argument0.y, o_bloque, true, false) {
            estado = m_est_rastrear;
            reloj_est = m_ia_rastreo_s;
            mx = argument0.x;
            my = argument0.y;
        }
    }
}

