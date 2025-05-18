///s_atacar(id, direccion);

with argument0 {
    if reloj_cadencia == 0 and boomerang {
        reloj_cadencia = s_para_proycaden(arma) * s_para_cadencia(id);
        reloj_cadencia += random(reloj_cadencia / 2);
        s_proyectil(id, argument1,
            random(m_proy_cadencia) < reloj_cadencia / m_proy_cadencia);
        if arma == 4 {
            boomerang = false;
        }
        else if arma == 1 {
            reloj_espada = 0.3;
        }
    }
}

