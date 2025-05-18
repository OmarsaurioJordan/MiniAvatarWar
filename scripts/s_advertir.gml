///s_advertir(id_golpeado, id_golpeador, id_proy);

if argument0.estado != m_est_seguir {
    var ok = false;
    if instance_exists(argument1) {
        if !collision_line(argument0.x, argument0.y,
                argument1.x, argument1.y, o_bloque, true, false) {
            argument0.estado = m_est_rastrear;
            argument0.reloj_est = m_ia_rastreo_s;
            argument0.mx = argument1.x;
            argument0.my = argument1.y;
            ok = true;
        }
    }
    if !ok {
        if !collision_line(argument0.x, argument0.y,
                argument2.xstart, argument2.ystart, o_bloque, true, false) {
            argument0.estado = m_est_rastrear;
            argument0.reloj_est = m_ia_rastreo_s;
            argument0.mx = argument2.xstart;
            argument0.my = argument2.ystart;
        }
    }
}

