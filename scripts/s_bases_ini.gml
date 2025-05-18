///s_bases_ini();

switch war_pelea {
    case m_pelea_paz:
        if o_control.war_gen[1] or o_control.war_gen[2] or
                o_control.war_gen[3] or o_control.war_gen[4] {
            with instance_create(room_width / 2, m_desfmap +
                    (room_height - m_desfmap) / 2, o_base) {
                clan = m_base_paz;
            }
        }
        if o_control.war_gen[0] {
            with instance_create(room_width / 2 + 250, m_desfmap +
                    (room_height - m_desfmap) / 2, o_base) {
                clan = m_base_neutral;
            }
        }
        break;
    case m_pelea_zombi:
        var xx = room_width / 2;
        var yy = m_desfmap + (room_height - m_desfmap) / 2;
        if o_control.war_gen[1] {
            with instance_create(xx - 125, yy + 125, o_base) {
                clan = m_base_tierra;
            }
        }
        if o_control.war_gen[2] {
            with instance_create(xx + 125, yy - 125, o_base) {
                clan = m_base_agua;
            }
        }
        if o_control.war_gen[3] {
            with instance_create(xx - 125, yy - 125, o_base) {
                clan = m_base_aire;
            }
        }
        if o_control.war_gen[4] {
            with instance_create(xx + 125, yy + 125, o_base) {
                clan = m_base_fuego;
            }
        }
        if o_control.war_gen[0] {
            for (var xi = 0; xi <= 1; xi += 0.5) {
                for (var yi = 0; yi <= 1; yi += 0.5) {
                    if xi == 0.5 and yi == 0.5 {
                        continue;
                    }
                    with instance_create(room_width * lerp(0.1, 0.9, xi), m_desfmap + 
                            (room_height - m_desfmap) * lerp(0.1, 0.9, yi), o_base) {
                        clan = m_base_neutral;
                    }
                }
            }
        }
        break;
    case m_pelea_grupos:
        var equid = (room_height - m_desfmap) * 0.8 * 0.5;
        if o_control.war_gen[1] {
            with instance_create(room_width * 0.5 - equid, m_desfmap +
                    (room_height - m_desfmap) * 0.9, o_base) {
                clan = m_base_tierra;
            }
        }
        if o_control.war_gen[2] {
            with instance_create(room_width * 0.5 + equid, m_desfmap +
                    (room_height - m_desfmap) * 0.1, o_base) {
                clan = m_base_agua;
            }
        }
        if o_control.war_gen[3] {
            with instance_create(room_width * 0.5 - equid, m_desfmap +
                    (room_height - m_desfmap) * 0.1, o_base) {
                clan = m_base_aire;
            }
        }
        if o_control.war_gen[4] {
            with instance_create(room_width * 0.5 + equid, m_desfmap +
                    (room_height - m_desfmap) * 0.9, o_base) {
                clan = m_base_fuego;
            }
        }
        if o_control.war_gen[0] {
            with instance_create(room_width / 2, m_desfmap +
                    (room_height - m_desfmap) / 2, o_base) {
                clan = m_base_neutral;
            }
        }
        break;
    case m_pelea_all:
    case m_pelea_azar:
        if o_control.war_gen[0] or o_control.war_gen[1] or o_control.war_gen[2] or
                o_control.war_gen[3] or o_control.war_gen[4] {
            for (var xi = 0; xi <= 1; xi += 0.5) {
                for (var yi = 0; yi <= 1; yi += 0.5) {
                    if xi == 0.5 and yi == 0.5 {
                        continue;
                    }
                    with instance_create(room_width * lerp(0.1, 0.9, xi), m_desfmap + 
                            (room_height - m_desfmap) * lerp(0.1, 0.9, yi), o_base) {
                        clan = m_base_all;
                    }
                }
            }
        }
        break;
    case m_pelea_dual:
        var yy = m_desfmap + (room_height - m_desfmap) / 2;
        if o_control.war_gen[1] {
            with instance_create(room_width * 0.1, yy + 125, o_base) {
                clan = m_base_tierra;
            }
        }
        if o_control.war_gen[2] {
            with instance_create(room_width * 0.1, yy - 125, o_base) {
                clan = m_base_agua;
            }
        }
        if o_control.war_gen[3] {
            with instance_create(room_width * 0.9, yy - 125, o_base) {
                clan = m_base_aire;
            }
        }
        if o_control.war_gen[4] {
            with instance_create(room_width * 0.9, yy + 125, o_base) {
                clan = m_base_fuego;
            }
        }
        if o_control.war_gen[0] {
            with instance_create(room_width / 2, m_desfmap +
                    (room_height - m_desfmap) / 2, o_base) {
                clan = m_base_neutral;
            }
        }
        break;
    case m_pelea_cruz:
        var yy = m_desfmap + (room_height - m_desfmap) / 2;
        if o_control.war_gen[1] {
            with instance_create(room_width * 0.1, yy + 125, o_base) {
                clan = m_base_tierra;
            }
        }
        if o_control.war_gen[2] {
            with instance_create(room_width * 0.1, yy - 125, o_base) {
                clan = m_base_aire;
            }
        }
        if o_control.war_gen[3] {
            with instance_create(room_width * 0.9, yy - 125, o_base) {
                clan = m_base_agua;
            }
        }
        if o_control.war_gen[4] {
            with instance_create(room_width * 0.9, yy + 125, o_base) {
                clan = m_base_fuego;
            }
        }
        if o_control.war_gen[0] {
            with instance_create(room_width / 2, m_desfmap +
                    (room_height - m_desfmap) / 2, o_base) {
                clan = m_base_neutral;
            }
        }
        break;
}

