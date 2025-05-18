///s_para_focoazar(arma, zombi);

switch argument0 {
    case 1: return 5; // espada
    case 2: return 15; // magia
    case 3:
        if argument1 {
            return 14; // flecha
        }
        else {
            return 8; // bala
        }
    case 4: return 10; // boomerang
}
return 1;

