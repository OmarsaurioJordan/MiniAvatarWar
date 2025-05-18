///s_avatar_creazar(total);
//arg0: numero de avatares aleatorios

var xx, yy, fr;
repeat argument0 {
    fr = 0;
    do {
        xx = random(room_width);
        yy = random(room_height);
        fr++;
        if fr > 300 {
            exit;
        }
    }
    until !collision_circle(xx, yy, 24, o_avatar, true, false);
    s_avatar_ini(xx, yy, -1);
}

