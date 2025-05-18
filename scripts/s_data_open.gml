///s_data_save();

s_data_ini();
ini_open("data.ini");
var a = 0;
var sec = "A0";
while ini_section_exists(sec) {
    data[a, 0] = ini_read_string(sec, "name", "");
    data[a, 1] = real(ini_read_string(sec, "clan", "0"));
    data[a, 2] = real(ini_read_string(sec, "body", "0"));
    data[a, 3] = real(ini_read_string(sec, "pelo", "0"));
    data[a, 4] = real(ini_read_string(sec, "cara", "0"));
    data[a, 5] = real(ini_read_string(sec, "arma", "0"));
    data[a, 6] = real(ini_read_string(sec, "ropa", "0"));
    data[a, 7] = real(ini_read_string(sec, "tool", "0"));
    data[a, 8] = ini_read_string(sec, "zona", "");
    data[a, 9] = ini_read_string(sec, "chat", "");
    data[a, 10] = false;
    a++;
    sec = "A" + string(a);
}
ini_close();

