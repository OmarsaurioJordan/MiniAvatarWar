//s_all_sola
// devuelve id base all con menos avatares cerca

var list = ds_priority_create();
with o_base {
    ds_priority_add(list, id, random(1));
}
var aux;
with o_avatar {
    aux = instance_nearest(x, y, o_base);
    ds_priority_change_priority(list, aux,
        ds_priority_find_priority(list, aux) + 1);
}
aux = ds_priority_find_min(list);
ds_priority_destroy(list);
return aux;

