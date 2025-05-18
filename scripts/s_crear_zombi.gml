///s_crear_zombi(x, y);

var fuerzas = 0;
with o_avatar {
    if tipo == m_tipo_user {
        fuerzas++;
    }
}
fuerzas = max(fuerzas, instance_number(o_base));
if war_stats[0, m_sta_bodega] > 0 and
        war_stats[0, m_sta_actual] < min(war_max, fuerzas) {
    s_zombi_ini(argument0 + random_range(-32, 32),
        argument1 + random_range(-32, 32));
    war_stats[0, m_sta_bodega]--;
    war_stats[0, m_sta_actual]++;
    return true;
}
return false;

