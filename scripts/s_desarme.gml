///s_desarme(id);

with argument0 {
    repeat 20 {
        switch irandom(4) {
            case 0: // cara
                if cara != 0 {
                    cara = 0;
                    s_audio(a_quitaobjeto, x, y, 40);
                    return true;
                }
                break;
            case 1: // pelo
                if pelo != 0 {
                    pelo = 0;
                    s_audio(a_quitaobjeto, x, y, 40);
                    return true;
                }
                break;
            case 2: // ropa
                if ropa != 0 {
                    ropa = 0;
                    s_audio(a_quitaobjeto, x, y, 40);
                    return true;
                }
                break;
            case 3: // tool
            case 4:
                if tool != 0 {
                    tool = 0;
                    s_audio(a_quitaobjeto, x, y, 40);
                    return true;
                }
                break;
        }
    }
}
return false;

