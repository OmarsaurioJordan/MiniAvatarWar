///s_avatar_creatodo(limpiar);

// eliminar avatares previos
if argument0 {
    with o_avatar {
        instance_destroy();
    }
}

var xx, yy, fr;
var lista = ds_priority_create();
for (var a = 0; a < array_height_2d(data); a++) {
    ds_priority_add(lista, a, random(1));
}
repeat array_height_2d(data) {
    fr = 0;
    do {
        xx = random(room_width);
        yy = random(room_height);
        fr++;
        if fr > 300 {
            ds_priority_destroy(lista);
            exit;
        }
    }
    until !collision_circle(xx, yy, 24, o_avatar, true, false);
    s_avatar_ini(xx, yy, ds_priority_delete_max(lista));
}
ds_priority_destroy(lista);

