///s_zombi_ini(x, y);

with instance_create(argument0, argument1, o_avatar) {
    name = "";
    chat = "";
    clan = 0;
    cara = 0;
    tool = 0;
    arma = choose(1, 3);
    pelo = 0;
    body = 0;
    ropa = 0;
    tipo = m_tipo_zomb;
    depth = -y;
    return id;
}

