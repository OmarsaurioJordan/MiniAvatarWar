///s_para_vida(id);

if argument0.tipo == m_tipo_zomb {
    return m_ava_vida_zombi;
}
else if argument0.body == 1 or argument0.body == 4 { // gordo o fuerte
    return m_ava_vida_plus;
}
return m_ava_vida;

