///s_data_save();

ini_open("data.ini");
var sec;
for (var a = 0; a < array_height_2d(data); a++) {
    sec = "A" + string(a);
    ini_write_string(sec, "name", data[a, 0]);
    ini_write_string(sec, "clan", string(data[a, 1]));
    ini_write_string(sec, "body", string(data[a, 2]));
    ini_write_string(sec, "pelo", string(data[a, 3]));
    ini_write_string(sec, "cara", string(data[a, 4]));
    ini_write_string(sec, "arma", string(data[a, 5]));
    ini_write_string(sec, "ropa", string(data[a, 6]));
    ini_write_string(sec, "tool", string(data[a, 7]));
    ini_write_string(sec, "zona", data[a, 8]);
    ini_write_string(sec, "chat", data[a, 9]);
}
ini_close();

