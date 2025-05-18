///s_proyectil(id, direccion, conveneno);
// arg0: id quien tira
// arg1: direccion de punteria
// arg2: si debe llevar veneno
// ret: id de proyectil creado

with instance_create(argument0.x + lengthdir_x(16, argument1),
        argument0.y + lengthdir_y(16, argument1), o_proyectil) {
    origen = argument0;
    clan = argument0.clan;
    arma = argument0.arma;
    arma_plus = 1 / s_para_cadencia(argument0);
    zombi = argument0.tipo == m_tipo_zomb;
    inspirado = argument0.reloj_inspira != 0;
    desarmar = argument0.desarmar and argument0.pelo == 2;
    embestir = argument0.embestir and argument0.pelo == 4;
    envenenado = argument0.cara == 2 and argument2;
    direction = argument1;
    reloj_fin = (s_margen_seguir(argument0, true) + s_para_proyextra(argument0, arma)) /
        s_para_proyvel(arma, arma_plus);
    switch arma {
        case 1: // espada
            if zombi {
                s_audio(a_espada, x, y, 4);
            }
            else {
                s_audio(a_espada, x, y, 16);
            }
            break;
        case 2: // magia
            audio_sound_gain(s_audio(a_chispa, x, y, 5), 0.8, 0);
            image_angle = random(360);
            break;
        case 3: // bala
            if zombi {
                s_audio(a_flecha, x, y, 3);
            }
            else {
                audio_sound_gain(s_audio(a_disparo, x, y, 8), 0.8, 0);
            }
            image_angle = direction;
            break;
        case 4: // boomerang
            s_audio(a_boomerang, x, y, 12);
            image_angle = random(360);
            break;
    }
    return id;
}

