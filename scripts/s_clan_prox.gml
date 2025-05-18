///s_clan_prox(x, y);

var list = ds_priority_create();
var matx = point_distance(0, 0, room_width, room_height);
var ddd;
with o_base {
    ddd = point_distance(x, y, argument0, argument1) / matx;
    ddd *= power(random(1), 0.5);
    switch clan {
        case m_base_all:
            ds_priority_add(list, irandom(4), ddd);
            break;
        case m_base_paz:
            ds_priority_add(list, irandom_range(1, 4), ddd);
            break;
        default:
            ds_priority_add(list, clan, ddd);
            break;
    }
}
ddd = ds_priority_find_min(list);
ds_priority_destroy(list);
return ddd;

