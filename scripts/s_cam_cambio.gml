///s_cam_cambio();

if instance_exists(seleccion) {
    var list = ds_list_create();
    with o_avatar {
        if seleccion != id and tipo == m_tipo_user {
            if o_control.war_camdiverso or !s_enemy(seleccion, id) {
                ds_list_add(list, id);
            }
        }
    }
    if !ds_list_empty(list) {
        ds_list_shuffle(list);
        seleccion = ds_list_find_value(list, 0);
    }
    ds_list_destroy(list);
}

