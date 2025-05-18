///s_grid_draw(grid);

var s = surface_create(ds_grid_width(argument0), ds_grid_height(argument0));
surface_set_target(s);
var pp;
for (var xx = 0; xx < ds_grid_width(argument0); xx++) {
    for (var yy = 0; yy < ds_grid_height(argument0); yy++) {
        pp = ds_grid_get(argument0, xx, yy);
        if pp == -1 {
            draw_point_colour(xx, yy, c_black);
        }
        else {
            draw_point_colour(xx, yy, merge_colour(c_red, c_green, pp / 4));
        }
    }
}
surface_reset_target();
surface_save(s, "grid.png");
surface_free(s);

