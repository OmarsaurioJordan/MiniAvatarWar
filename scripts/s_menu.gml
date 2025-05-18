///s_menu();

audio_stop_sound(a_corazon);

war_dialogos = m_chat_null;
for (var i = 4; i >= 0; i--) { // estadisticas
    war_stats[i, m_sta_bodega] = 0;
    war_stats[i, m_sta_actual] = 0;
    war_stats[i, m_sta_die] = 0;
    war_stats[i, m_sta_caza] = 0;
    war_elem[i] = 0;
}
s_zombi_ini(200, 370);
with instance_create(70, 480, o_boton) { tipo = m_bot_forms; }
with instance_create(130, 480, o_boton) { tipo = m_bot_name; }
with instance_create(330, 480, o_boton) { tipo = m_bot_busca; }
with instance_create(200, 420, o_boton) { tipo = m_bot_azar; }
with instance_create(140, 420, o_boton) { tipo = m_bot_time; }
with instance_create(260, 420, o_boton) { tipo = m_bot_foto; }
with instance_create(80, 420, o_boton) { tipo = m_bot_previous; }
with instance_create(320, 420, o_boton) { tipo = m_bot_next; }
with instance_create(520, 480, o_boton) { tipo = m_bot_play; }
with instance_create(460, 180, o_boton) { tipo = m_bot_zona; }
with instance_create(460, 240, o_boton) { tipo = m_bot_menos; }
with instance_create(570, 240, o_boton) { tipo = m_bot_mas; }
with instance_create(460, 290, o_boton) { tipo = m_bot_poco; }
with instance_create(570, 290, o_boton) { tipo = m_bot_mucho; }
with instance_create(460, 350, o_boton) { tipo = m_bot_neutral; }
with instance_create(520, 350, o_boton) { tipo = m_bot_tierra; }
with instance_create(580, 350, o_boton) { tipo = m_bot_agua; }
with instance_create(630, 350, o_boton) { tipo = m_bot_aire; }
with instance_create(690, 350, o_boton) { tipo = m_bot_fuego; }
with instance_create(450, 450, o_boton) { tipo = m_bot_mapa; }
with instance_create(650, 260, o_boton) { tipo = m_bot_fight; }
with instance_create(330, 340, o_boton) { tipo = m_bot_chat; }

