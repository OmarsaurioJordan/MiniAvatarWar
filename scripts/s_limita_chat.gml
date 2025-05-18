///s_limita_chat(string);

var txt = argument0;
while string_width_ext(txt, 20, 230 / 0.8) * 0.8 > 230 or
        string_height_ext(txt, 20, 230 / 0.8) * 0.8 > 120 {
    txt = string_copy(txt, 1, string_length(txt) - 1);
}
return txt;

