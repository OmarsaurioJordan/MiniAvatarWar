///s_data_http();
// procesa los datos recibidos

s_data_ini();
var fff = file_text_open_read("data.txt");
file_text_readln(fff);
var libro = ds_list_create();
while !file_text_eof(fff) {
    ds_list_add(libro, file_text_read_string(fff));
    file_text_readln(fff);
}
file_text_close(fff);
ds_list_shuffle(libro);

var txt, len, into, segment;
var n = 0;
while !ds_list_empty(libro) {
    txt = ds_list_find_value(libro, 0);
    ds_list_delete(libro, 0);
    len = string_length(txt);
    into = false;
    segment = 0;
    for (var c = 1; c < len; c++) {
        if into {
            if string_char_at(txt, c) == "," {
                txt = string_delete(txt, c, 1);
                len--;
                c--;
            }
            else if string_char_at(txt, c) == '"' {
                txt = string_delete(txt, c, 1);
                len--;
                c--;
                into = false;
            }
        }
        else {
            if string_char_at(txt, c) == "," {
                segment++;
                if string_char_at(txt, c + 1) == '"' {
                    if segment < 10 {
                        txt = string_delete(txt, c + 1, 1);
                        len--;
                        into = true;
                    }
                    else {
                        txt = string_delete(txt, c + 1, 1);
                        len--;
                        break;
                    }
                }
            }
        }
    }
    if string_char_at(txt, len) == '"' {
        txt = string_delete(txt, len, 1);
    }
    txt = s_split(txt, ",", false);
    if is_array(txt) {
        len = array_length_1d(txt);
        if len >= 11 {
            // txt[0] = "dia/mes/year hora:min:seg"
            data[n, m_par_name] = s_name_mask(txt[1]);
            for (var p = 1; p <= 7; p++) {
                data[n, p] = s_valido(txt[p + 1]);
            }
            data[n, m_par_zona] = s_lower(s_name_mask(txt[9]));
            data[n, m_par_chat] = txt[10];
            for (var t = 11; t < len; t++) {
                data[n, m_par_chat] += "," + txt[t];
            }
            data[n, m_par_chat] = s_limita_chat(data[n, m_par_chat]);
            data[n, m_par_vida] = false;
            n++;
        }
    }
}
ds_list_destroy(libro);

