///s_busqueda(id, iteraciones, dist_vision, enemigo);

var blanco = noone;
var f = argument1;
var dd, ll, aux, ene;
var xx = argument0.x;
var yy = argument0.y;
while blanco == noone and f > 0 {
    f--;
    // buscar blanco
    ll = random_range(argument2 * 0.25, argument2 * 0.75);
    dd = random(360);
    aux = instance_nearest(xx + lengthdir_x(ll, dd),
        yy + lengthdir_y(ll, dd), o_avatar);
    ene = s_enemy(argument0, aux);
    if ((ene and argument3) or (!ene and !argument3 and argument0 != aux)) and
            point_distance(xx, yy, aux.x, aux.y) < argument2 and
            !collision_line(xx, yy, aux.x, aux.y, o_bloque, true, false) {
        if !(argument0.tipo == m_tipo_elem and argument3 and aux.pelo == 3) {
            blanco = aux;
        }
        
    }
}
return blanco;

