///s_avatar_ini(x, y, ind_avatar);

with instance_create(argument0, argument1, o_avatar) {
    if argument2 == -1 {
        name = "";
        chat = "";
        clan = irandom_range(1, 4); // 1
        cara = irandom_range(1, 4); // 2
        tool = irandom_range(1, 4); // 3
        arma = irandom_range(1, 4); // 4
        pelo = irandom_range(1, 4); // 5
        body = irandom_range(1, 4); // 6
        ropa = irandom_range(1, 4); // 7
    }
    else if war_pelea == m_pelea_azar and room == w_mundo {
        name = data[argument2, m_par_name];
        chat = data[argument2, m_par_chat];
        clan = data[argument2, m_par_clan];
        cara = 3; // no
        tool = 0; // no
        arma = 3;
        pelo = 3; // no
        body = 3;
        ropa = 4; // no
    }
    else {
        name = data[argument2, m_par_name];
        chat = data[argument2, m_par_chat];
        clan = data[argument2, m_par_clan];
        cara = data[argument2, m_par_cara];
        tool = data[argument2, m_par_tool];
        arma = data[argument2, m_par_arma];
        pelo = data[argument2, m_par_pelo];
        body = data[argument2, m_par_body];
        ropa = data[argument2, m_par_ropa];
    }
    tipo = m_tipo_user;
    depth = -y;
    
    // caracteristicas especiales
    vida = s_para_vida(id);
    
    return id;
}
return noone;

