///s_data_busqueda(ind_busqueda);
// arg0: 0:--, 1:++, 2:azar, 3:name, 4:verifica

var gg = -1;
switch argument0 {
    case 4: // verifica
        gg = -2;
        if war_zona == "" or data[o_control.menu_aguja, m_par_zona] == s_lower(war_zona) {
            if o_control.war_gen[data[o_control.menu_aguja, m_par_clan]] {
                exit;
            }
        }
        break;
    case 3: // name
        var nn = o_control.boton_name;
        var list = ds_list_create();
        for (var a = 0; a < array_height_2d(data); a++) {
            if data[a, m_par_name] == nn {
                ds_list_add(list, a);
            }
        }
        if !ds_list_empty(list) {
            ds_list_shuffle(list);
            gg = ds_list_find_value(list, 0);
            if gg == o_control.menu_aguja and ds_list_size(list) > 1 {
                ds_list_find_value(list, 1);
            }
        }
        ds_list_destroy(list);
        break;
    case 2: // azar
        var list = ds_list_create();
        for (var a = 0; a < array_height_2d(data); a++) {
            if war_zona == "" or data[a, m_par_zona] == s_lower(war_zona) {
                if o_control.war_gen[data[a, m_par_clan]] {
                    ds_list_add(list, a);
                }
            }
        }
        if !ds_list_empty(list) {
            ds_list_shuffle(list);
            gg = ds_list_find_value(list, 0);
            if gg == o_control.menu_aguja and ds_list_size(list) > 1 {
                ds_list_find_value(list, 1);
            }
        }
        ds_list_destroy(list);
        break;
    case 1: //++
        var ll = array_height_2d(data);
        var a = o_control.menu_aguja;
        var v = a;
        while true {
            a++;
            if a >= ll {
                a = 0;
            }
            if a == v {
                break;
            }
            if war_zona == "" or data[a, m_par_zona] == s_lower(war_zona) {
                if o_control.war_gen[data[a, m_par_clan]] {
                    gg = a;
                    break;
                }
            }
        }
        break;
    case 0: //--
        var ll = array_height_2d(data);
        var a = o_control.menu_aguja;
        var v = a;
        while true {
            a--;
            if a < 0 {
                a = ll - 1;
            }
            if a == v {
                break;
            }
            if war_zona == "" or data[a, m_par_zona] == s_lower(war_zona) {
                if o_control.war_gen[data[a, m_par_clan]] {
                    gg = a;
                    break;
                }
            }
        }
        break;
}
if gg == -2 {
    s_data_busqueda(2);
}
else if gg == -1 {
    o_control.menu_aguja = 0;
    with o_avatar {
        s_zombi_ini(x, y);
        instance_destroy();
        break;
    }
}
else {
    o_control.menu_aguja = gg;
    with o_avatar {
        s_avatar_ini(x, y, gg);
        instance_destroy();
        break;
    }
}

