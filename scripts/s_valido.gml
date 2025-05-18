//s_valido(str_num);
// arg0: str numero a validar
// ret: int valor numerico

if argument0 != "" {
    switch string_char_at(argument0, 1) {
        case "1": return 1;
        case "2": return 2;
        case "3": return 3;
        case "4": return 4;
        default: return 1 + irandom(3);
    }
}
else {
    return 1 + irandom(3);
}

