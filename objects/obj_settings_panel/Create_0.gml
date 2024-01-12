image_speed = 0
c_letters = make_colour_rgb(89, 15, 16)
idioma = global.idioma
settings = scr_language(19)
controls = scr_language(20)
language = scr_language(21)
character = scr_language(22)
sonidos = scr_language(23)
if (obj_persistent.modo_android == 0) && (global.keymod == 0)
{
    ventana = scr_language(24)
    sombras = scr_language(25)
}
else if (global.keymod == 0)
{
    ventana = scr_language(26)
    sombras = scr_language(27)
}
if instance_exists(obj_editormanager)
    obj_editormanager.expand_open = 2
if instance_exists(obj_button_home)
{
    with (obj_button_home)
    {
        alarm[0] = -1
        press = 0
    }
}
if instance_exists(obj_pausa_button)
{
    with (obj_pausa_button)
    {
        alarm[0] = -1
        canpress = 1
    }
}


switch global.jugador
{
    case 1:
        active1 = 0
        active2 = 1
        active3 = 0
        active4 = 0
        break
    case 2:
        active1 = 0
        active2 = 0
        active3 = 1
        active4 = 0
        break
    case 3:
        active1 = 0
        active2 = 0
        active3 = 0
        active4 = 1
        break
    default:
        active1 = 1
        active2 = 0
        active3 = 0
        active4 = 0
        break
}

switch global.w_scale
{
    case 2:
        act1 = 0
        act2 = 1
        act3 = 0
        act4 = 0
        break
    case 3:
        act1 = 0
        act2 = 0
        act3 = 1
        act4 = 0
        break
    case 4:
        act1 = 0
        act2 = 0
        act3 = 0
        act4 = 1
        break
    default:
        act1 = 1
        act2 = 0
        act3 = 0
        act4 = 0
        break
}

instance_create((camera_get_view_x(view_get_camera(0)) + 232), (camera_get_view_y(view_get_camera(0)) + 150), obj_st_slider)
instance_create((camera_get_view_x(view_get_camera(0)) + 8), (camera_get_view_y(view_get_camera(0)) + 51), obj_settings_custom)
instance_create((camera_get_view_x(view_get_camera(0)) + 8), (camera_get_view_y(view_get_camera(0)) + 101), obj_button_settings_idioma)
if (obj_persistent.modo_android == 0)
    instance_create((camera_get_view_x(view_get_camera(0)) + 8), (camera_get_view_y(view_get_camera(0)) + 142), obj_button_settings_estrella)
else
    instance_create((camera_get_view_x(view_get_camera(0)) + 8), (camera_get_view_y(view_get_camera(0)) + 142), obj_button_settings_sm4j)
instance_create((camera_get_view_x(view_get_camera(0)) + 8), (camera_get_view_y(view_get_camera(0)) + 191), obj_selecting_fps)
instance_create((camera_get_view_x(view_get_camera(0)) + 39), (camera_get_view_y(view_get_camera(0)) + 191), obj_button_creditos)
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 102), (camera_get_view_y(view_get_camera(0)) + 191),-19, obj_vsync)
with (instance_create((camera_get_view_x(view_get_camera(0)) + 231), (camera_get_view_y(view_get_camera(0)) + 51), obj_selecting_player))
{
    value = 0
    image_draw = 0
    active = other.active1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 260), (camera_get_view_y(view_get_camera(0)) + 51), obj_selecting_player))
{
    value = 1
    image_draw = 1
    active = other.active2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 289), (camera_get_view_y(view_get_camera(0)) + 51), obj_selecting_player))
{
    value = 2
    image_draw = 2
    active = other.active3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 318), (camera_get_view_y(view_get_camera(0)) + 51), obj_selecting_player))
{
    value = 3
    image_draw = 3
    active = other.active4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 347), (camera_get_view_y(view_get_camera(0)) + 51), obj_selecting_player))
{
    value = 4
    image_draw = 4
    active = 2
}
if (obj_persistent.modo_android == 0)
{
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 231), (camera_get_view_y(view_get_camera(0)) + 101), obj_window_select))
    {
        value = 0
        image_draw = 0
        active = other.act1
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 260), (camera_get_view_y(view_get_camera(0)) + 101), obj_window_select))
    {
        value = 1
        image_draw = 1
        active = other.act2
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 289), (camera_get_view_y(view_get_camera(0)) + 101), obj_window_select))
    {
        value = 2
        image_draw = 2
        active = other.act3
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 318), (camera_get_view_y(view_get_camera(0)) + 101), obj_window_select))
    {
        value = 3
        image_draw = 3
        active = other.act4
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 347), (camera_get_view_y(view_get_camera(0)) + 101), obj_window_select))
    {
        value = 4
        image_draw = 4
        active = 2
    }
}
else
    instance_create((camera_get_view_x(view_get_camera(0)) + 231), (camera_get_view_y(view_get_camera(0)) + 101), obj_button_settings_controls)
instance_create((camera_get_view_x(view_get_camera(0)) + 263), (camera_get_view_y(view_get_camera(0)) + 186), obj_button_settings_close)

