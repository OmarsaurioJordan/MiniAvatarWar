///s_morir(id);

var aux;
with argument0 {
    aux = instance_create(x, y, o_muerte);
    aux.name = name;
    aux.clan = clan;
    aux.cara = cara;
    aux.pelo = pelo;
    aux.body = body;
    aux.ropa = ropa;
    aux.tipo = tipo;
    if tipo == m_tipo_zomb {
        s_audio(a_muertezombi, x, y, 50);
    }
    else {
        s_audio(a_muerte, x, y, 50);
    }
    instance_destroy();
}
if aux.tipo != m_tipo_elem {
    war_stats[aux.clan, m_sta_die]++;
    war_stats[aux.clan, m_sta_actual]--;
}
if aux.tipo == m_tipo_zomb {
    war_stats[0, m_sta_bodega] += 2; // duplicacion de zombies
}
s_victoria();
return aux;

