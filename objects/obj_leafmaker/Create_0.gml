var leaf;
snow_sys = part_system_create()
ind = 1
snow = part_type_create()
switch global.apariencia
{
    case 0:
        var leaf = spr_SMB_hoja
        break
    case 1:
        leaf = spr_SMB3_hoja
        break
    case 2:
        leaf = spr_hoja
        break
    case 3:
        leaf = spr_NSMBU_hoja
        break
}

part_type_sprite(snow, leaf, 0, 0, 0)
part_system_depth(snow_sys, -8)
part_type_size(snow, 0.3, 0.8, 0, 0)
part_type_life(snow, 216, 432)
part_type_speed(snow, 0.5, 1, 0, 0)
part_type_direction(snow, 240, 260, 0.05, 0.1)
part_type_colour1(snow, 16777215)
emitter = part_emitter_create(snow_sys)
part_emitter_stream(snow_sys, emitter, snow, 1)
part_emitter_region(snow_sys, emitter, (camera_get_view_x(view_get_camera(0)) - 600), ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) + 600), camera_get_view_y(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), 3, 0)
part_system_update(snow_sys)

