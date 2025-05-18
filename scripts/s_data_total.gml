///s_data_total();

var n = 0;
for (var a = 0; a < array_height_2d(data); a++) {
    if war_zona == "" or data[a, m_par_zona] == s_lower(war_zona) {
        if o_control.war_gen[data[a, m_par_clan]] {
            n++;
        }
    }
}
o_control.menu_total = n;

