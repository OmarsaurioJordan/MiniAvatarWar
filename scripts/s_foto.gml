///s_foto();

var res = true;
var fff = get_save_filename("IMAGE|*.png", o_avatar.name);
if fff == "" {
    fff = "u_" +  o_avatar.name + ".png";
    res = false;
}
var con_chat = o_avatar.chat != "" and war_dialogos != m_chat_null;
var lienzo, xx, yy;
if con_chat {
    lienzo = surface_create(336, 340);
    xx = 168;
    yy = 320;
}
else {
    lienzo = surface_create(96, 180);
    xx = 48;
    yy = 160;
}
surface_set_target(lienzo);
draw_clear_alpha(c_white, 1);
with o_avatar {
    // sombra
    draw_sprite(d_sombra, 0, xx, yy);
    // pies
    draw_sprite_ext(d_avatar, 1, xx, yy, 1, 1, 0, c_clan[clan], 1);
    draw_sprite_ext(d_avatar, 2, xx, yy, 1, 1, 0, c_clan[clan], 1);
    // cuerpo
    draw_sprite_ext(d_avatar, 3 + body, xx, yy, 1, 1, 0, c_clan[clan], 1);
    draw_sprite_ext(d_avatar, 29 + body * 5 + ropa, xx, yy, 1, 1, 0, c_oscu[clan], 1);
    
    // cabeza
    draw_sprite_ext(d_avatar, 0, xx, yy, 1, 1, 0, c_clan[clan], 1);
    draw_sprite_ext(d_avatar, 8 + cara, xx, yy, 1, 1, 0, c_blan[clan], 1);
    draw_sprite_ext(d_avatar, 13 + pelo, xx, yy, 1, 1, 0, c_oscu[clan], 1);
    
    // herramienta y arma
    draw_sprite_ext(d_avatar, 25 + tool, xx, yy, 1, 1, 0, c_blan[clan], 1);
    draw_sprite_ext(d_avatar, 18 + arma, xx, yy, 1, 1, 0, c_blan[clan], 1);
    
    // mensaje
    if con_chat {
        draw_sprite_ext(d_chat, 0, xx, yy - 10, 1, 1, 0, c_blan[clan], 0.8);
        draw_set_valign(fa_middle);
        draw_set_halign(fa_center);
        draw_text_ext_transformed_colour(xx, yy - 205 - 10, chat,
            20, 230 / 0.8, 0.8, 0.8, 0, c_char[clan], c_char[clan], c_char[clan], c_char[clan], 0.8);
    }
}
surface_reset_target();
surface_save(lienzo, fff);
surface_free(lienzo);
return res;

