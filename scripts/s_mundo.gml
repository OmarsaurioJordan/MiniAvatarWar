///s_mundo();

pila_cadaveres = 0;
pila_craneos = 0;
war_fin = war_pelea == m_pelea_paz;
o_control.tiempo_sim = 0;
view_xview[0] = (room_width - view_wview[0]) / 2;
view_yview[0] = m_desfmap + ((room_height - m_desfmap) - view_hview[0]) / 2;
s_mapa_ini();

// obtener datos de los implicados en combate
for (var u = 0; u < array_height_2d(data); u++) {
    if (war_zona == "" or data[u, m_par_zona] == s_lower(war_zona)) and
            o_control.war_gen[data[u, m_par_clan]] {
        data[u, m_par_vida] = false;
        war_stats[data[u, m_par_clan], m_sta_bodega]++;
    }
    else {
        data[u, m_par_vida] = true;
    }
}
if o_control.war_gen[0] {
    war_stats[0, m_sta_bodega] = 2;
}

// crear el centro
instance_create(room_width / 2, m_desfmap +
    (room_height - m_desfmap) / 2 + 128, o_cen);

if war_speed > 1 {
    audio_play_sound(a_corazon, 100, true);
}

audio_play_sound(a_play, 100, false);

