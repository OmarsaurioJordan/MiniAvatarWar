///s_victoria();

war_fin = true;
var yo;
with o_avatar {
    yo = id;
    with o_avatar {
        if yo != id and s_enemy(yo, id) {
            war_fin = false;
            break;
        }
    }
    if !war_fin {
        break;
    }
}

if war_fin {
    var list = ds_list_create();
    for (var i = 0; i <= 4; i++) {
        if war_stats[i, m_sta_bodega] > 0 {
            ds_list_add(list, i);
        }
    }
    var ll = ds_list_size(list);
    if (war_pelea == m_pelea_all or war_pelea == m_pelea_azar) and ll == 1 {
        war_fin = false;
        ds_list_destroy(list);
        exit;
    }
    for (var i = 0; i < ll; i++) {
        for (var k = i + 1; k < ll; k++) {
            o_control.clan = ds_list_find_value(list, i);
            o_sombras.clan = ds_list_find_value(list, k);
            if s_enemy(o_control.id, o_sombras.id) {
                war_fin = false;
                ds_list_destroy(list);
                exit;
            }
        }
    }
    ds_list_destroy(list);
}

// hay victoria
with o_avatar {
    alarm[1] = ceil(room_speed * random_range(4, 8));
}

