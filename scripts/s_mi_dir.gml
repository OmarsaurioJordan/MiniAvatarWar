///s_mi_dir(x, y, grid);
// arg0: punto x
// arg1: punto y
// arg2: rejilla
// ret: ind de zona, usualmente color

var xx = round((argument0 / m_celda) - 1);
xx = clamp(xx, 0, ds_grid_width(argument2) - 1);
var yy = round((argument1 / m_celda) - 1);
yy = clamp(yy, 0, ds_grid_height(argument2) - 1);
return ds_grid_get(argument2, xx, yy);

