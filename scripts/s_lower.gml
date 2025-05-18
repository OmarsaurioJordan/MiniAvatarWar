///s_lower(txt);

var txt = string_lower(argument0);
txt = string_replace_all(txt, "Á", "á");
txt = string_replace_all(txt, "É", "é");
txt = string_replace_all(txt, "Í", "í");
txt = string_replace_all(txt, "Ó", "ó");
txt = string_replace_all(txt, "Ú", "ú");
txt = string_replace_all(txt, "Ñ", "ñ");
return txt;

