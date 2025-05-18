///s_draw_comandos(x, y, escala);

var e = argument2;
draw_sprite_ext(d_comandos, 0, argument0, argument1, e, e, 0, c_white, 1);
draw_sprite_ext(d_comandos, 1, argument0, argument1, e, e, 0, c_white, 1);
draw_sprite_ext(d_comandos, 2, argument0, argument1, e, e, 0, c_white, 1);
draw_sprite_ext(d_comandos, 3, argument0, argument1, e, e, 0, c_white, 1);
draw_sprite_ext(d_comandos, 4 + war_dialogos,
    argument0, argument1, e, e, 0, c_white, 1);
if o_control.war_camdiverso {
    draw_sprite_ext(d_comandos, 8, argument0, argument1, e, e, 0, c_white, 1);
}
else {
    draw_sprite_ext(d_comandos, 7, argument0, argument1, e, e, 0, c_white, 1);
}
draw_sprite_ext(d_comandos, 9 + o_control.war_camfind,
    argument0, argument1, e, e, 0, c_white, 1);
if modo_player {
    draw_sprite_ext(d_comandos, 14, argument0, argument1, e, e, 0, c_white, 1);
}
else {
    draw_sprite_ext(d_comandos, 13, argument0, argument1, e, e, 0, c_white, 1);
}
if global_gain {
    draw_sprite_ext(d_comandos, 16, argument0, argument1, e, e, 0, c_white, 1);
}
else {
    draw_sprite_ext(d_comandos, 15, argument0, argument1, e, e, 0, c_white, 1);
}

