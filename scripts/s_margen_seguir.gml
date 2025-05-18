///s_margen_seguir(id, es_max);

var vv = s_para_vision(argument0);
if argument1 {
    switch argument0.arma {
        case 1: return 64; // espada
        case 2: return vv * 0.75; // magia
        case 3: return vv * 0.9; // rifle
        case 4: return vv * 0.55; // boomerang
    }
    return vv;
}
else {
    switch argument0.arma {
        case 1: return 32; // espada
        case 2: return vv * 0.55; // magia
        case 3: return vv * 0.7; // rifle
        case 4: return vv * 0.35; // boomerang
    }
    return 0;
}

