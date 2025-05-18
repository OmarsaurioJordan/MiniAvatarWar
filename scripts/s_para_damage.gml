///s_para_damage(arma, blindaje, conescudo, x, y);

if argument2 and random(1) < m_ava_escudo {
    if argument0 == 2 {
        s_audio(a_contrarbol, argument3, argument4, 2);
    }
    else {
        s_audio(a_rebotemetal, argument3, argument4, 4);
    }
    return 0;
}
switch argument0 {
    case 1: // espada
        if random(1) < 0.1 { // evasion mele
            return 10;
        }
        else if argument1 == 0 { // nada
            return 45;
        }
        else if argument1 == 1 or argument1 == 4 { // fuerte
            return 35;
        }
        else { // basico
            return 40;
        }
    case 2: // magia
        if argument1 == 0 { // nada
            return 15;
        }
        else if argument1 == 1 or argument1 == 4 { // fuerte
            return 5;
        }
        else { // basico
            return 10;
        }
    case 3: // bala
        if argument1 == 0 { // nada
            return 25;
        }
        else if argument1 == 1 or argument1 == 4 { // fuerte
            return 15;
        }
        else { // basico
            return 20;
        }
    case 4: // boomerang
        if argument1 == 0 { // nada
            return 35;
        }
        else if argument1 == 1 or argument1 == 4 { // fuerte
            return 25;
        }
        else { // basico
            return 30;
        }
}
return 1;

