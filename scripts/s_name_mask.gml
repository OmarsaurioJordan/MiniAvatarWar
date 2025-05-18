///s_name_mask(string);

var txt = "";
var cc;
for (var c = 1; c <= string_length(argument0); c++) {
    cc = string_char_at(argument0, c);
    if string_count(cc, m_mask) == 1 {
        txt += cc;
    }
}
return txt;

