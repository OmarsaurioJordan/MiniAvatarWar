///s_explosion(origen);

var dmg, lll, yo;
with o_avatar {
    if s_enemy(argument0, id) {
        lll = point_distance(x, y, argument0.x, argument0.y);
        if lll < m_ava_radexp and
                !collision_line(x, y, argument0.x, argument0.y, o_bloque, true, false) {
            dmg = (-power(1 - lll / m_ava_radexp, 4) + 1) * m_ava_explodamage;
            if ropa != 0 {
                dmg *= 0.9;
            }
            if tool == 1 {
                dmg *= 0.75;
            }
            if pelo == 1 {
                dmg *= 0.25;
            }
            if tipo == m_tipo_zomb {
                dmg *= 1.5;
            }
            // aplicar damage y ver si muere
            vida = max(0, vida - dmg);
            if vida == 0 {
                if tipo != m_tipo_elem {
                    war_stats[argument0.clan, m_sta_caza]++;
                }
                // explosion final
                if tool == 4 {
                    yo = id;
                    with instance_create(x, y, o_explosion) {
                        clan = yo.clan;
                    }
                }
                s_morir(id);
            }
        }
    }
}
var xx, yy;
repeat 24 {
    do {
        xx = argument0.x + random_range(-m_ava_radexp * 0.75, m_ava_radexp * 0.75);
        yy = argument0.y + random_range(-m_ava_radexp * 0.75, m_ava_radexp * 0.75);
    }
    until point_distance(xx, yy, argument0.x, argument0.y) < m_ava_radexp * 0.75;
    if !collision_circle(xx, yy, 8, o_esquirla, true, false) and
            !collision_circle(xx, yy, 8, o_bloque, true, false) {
        with instance_create(xx, yy, o_esquirla) {
            clan = argument0.clan;
        }
    }
}
s_audio(a_explosion, argument0.x, argument0.y, 90);

