if (sprite_index == spr_panel_condiciones)
{
    image_speed = 0
    image_index = 3
    can_draw = 1
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 83), (camera_get_view_y(view_get_camera(0)) + 86), obj_tabs_condiciones))
    {
        index = 0
		text = scr_language(43)
        selected = 1
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 160), (camera_get_view_y(view_get_camera(0)) + 86), obj_tabs_condiciones))
    {
        index = 1
		text = scr_language(44)
        disabled = 1
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 237), (camera_get_view_y(view_get_camera(0)) + 86), obj_tabs_condiciones))
    {
        index = 2
		text = scr_language(45)
        disabled = 1
    }

    with (instance_create((camera_get_view_x(view_get_camera(0)) + 313), (camera_get_view_y(view_get_camera(0)) + 64), obj_tabs_condiciones))
    {
		sprite_index = spr_conditions_clear
        index = 3
        if (global.condiciones == 1)
            disabled = 0
        else
            disabled = 1
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 100), (camera_get_view_y(view_get_camera(0)) + 107), obj_condiciones_button))
    {
        sprite_index = spr_condiciones_button_up
        if (global.condiciones_count == 3)
            image_index = 1
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 100), (camera_get_view_y(view_get_camera(0)) + 151), obj_condiciones_button))
    {
        sprite_index = spr_condiciones_button_down
        if (global.condiciones_count == 0)
            image_index = 1
    }
    instance_create((camera_get_view_x(view_get_camera(0)) + 224), (camera_get_view_y(view_get_camera(0)) + 154), obj_button_ok)
}

