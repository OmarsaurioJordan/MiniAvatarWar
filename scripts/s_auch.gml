///s_auch(id);

if !global_gain {
    exit;
}
with argument0 {
    var p = irandom_range(3, 16);
    switch tipo {
        case m_tipo_elem:
            s_audio(a_auch_elemental, x, y, p);
            break;
        case m_tipo_user:
            switch clan {
                case m_base_tierra: s_audio(a_auch_tierra, x, y, p); break;
                case m_base_agua: s_audio(a_auch_agua, x, y, p); break;
                case m_base_aire: s_audio(a_auch_aire, x, y, p); break;
                case m_base_fuego: s_audio(a_auch_fuego, x, y, p); break;
            }
            break;
        case m_tipo_zomb:
            switch irandom(3) {
                case 0: s_audio(a_auch_zombi1, x, y, p); break;
                case 1: s_audio(a_auch_zombi2, x, y, p); break;
                case 2: s_audio(a_auch_zombi3, x, y, p); break;
                case 3: s_audio(a_auch_zombi4, x, y, p); break;
            }
            break;
    }
}

