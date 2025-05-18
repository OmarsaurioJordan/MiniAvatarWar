///s_enemy(id_ojo, id_obj);
// arg0: id de quien mira
// arg1: id del objetivo visto
// ret: true si es enemigo

switch war_pelea {
    case m_pelea_paz:
        return false;
    case m_pelea_zombi:
        return (argument0.clan == 0 and argument1.clan != 0) or
            (argument0.clan != 0 and argument1.clan == 0);
    case m_pelea_grupos:
        return argument0.clan != argument1.clan;
    case m_pelea_all:
    case m_pelea_azar:
        return argument0 != argument1;
    case m_pelea_dual:
        var s = argument0.clan + argument1.clan;
        s = s == 3 or s == 7;
        return !(argument0.clan == argument1.clan or
            (s and argument0.clan * argument1.clan != 0));
    case m_pelea_cruz:
        var s = argument0.clan + argument1.clan;
        s = s == 4 or s == 6;
        return !(argument0.clan == argument1.clan or
            (s and argument0.clan * argument1.clan != 0));
}
return false;

