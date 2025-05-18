///s_para_proyvel(arma, cad_plus);

switch argument0 {
    case 1: return m_proy_velocidad * 0.8; // espada
    case 2: return m_proy_velocidad * 0.75; // magia
    case 3: return m_proy_velocidad * 1.3; // bala
    case 4: return m_proy_velocidad * argument1 * 0.8; // boomerang
}
return 0;

