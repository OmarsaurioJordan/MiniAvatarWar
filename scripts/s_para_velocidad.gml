///s_para_velocidad(id);

var esp = 1;
if argument0.arma == 1 { // mele corre un poco mas
    esp = 1.1;
}
if argument0.body == 2 or argument0.body == 3 { // femenino o flaco
    return m_ava_velocidad_plus * esp;
}
return m_ava_velocidad * esp;

