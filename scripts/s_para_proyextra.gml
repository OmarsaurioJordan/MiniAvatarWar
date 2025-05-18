///s_para_proyextra(id, arma);

var vv = s_para_vision(argument0);
switch argument1 {
    case 1: return 24; // espada
    case 2: return vv * 0.15; // magia
    case 3: return vv * 0.3; // bala
    case 4: return  vv * 0.1; // boomerang
}
return 0;

