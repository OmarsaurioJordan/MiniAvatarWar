///s_crear_avatar(x, y, clan);

if war_stats[argument2, m_sta_bodega] > 0 and
        war_stats[argument2, m_sta_actual] < war_max {
    for (var u = 0; u < array_height_2d(data); u++) {
        if data[u, m_par_clan] == argument2 and !data[u, m_par_vida] {
            o_control.ultimitou = s_avatar_ini(argument0 + random_range(-32, 32),
                argument1 + random_range(-32, 32), u);
            data[u, m_par_vida] = true;
            war_stats[argument2, m_sta_bodega]--;
            war_stats[argument2, m_sta_actual]++;
            // crear elemental
            if war_pelea != m_pelea_paz and war_pelea != m_pelea_azar {
                if data[u, m_par_pelo] == 3 {
                    war_elem[argument2] += 1 / m_ava_coven_elem;
                    if war_elem[argument2] >= 1 {
                        war_elem[argument2] -= 1;
                        s_elemental_ini(argument0 + random_range(-32, 32),
                            argument1 + random_range(-32, 32), argument2);
                    }
                }
            }
            return true;
        }
    }
}
return false;

