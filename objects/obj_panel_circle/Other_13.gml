type = 2
sprite_index = spr_panel_circle_7
image_index = 2
obj_panel_expand.header = 2
obj_header.page = 3
posicion = 3
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    if (global.goomba == 0)
    {
        obj = obj_goomba_res
        image_index = 69
    }
    else
    {
        obj = obj_goombrat_res
        image_index = 70
        other.image_selected = 70
    }
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = image_index
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    if (global.koopa == 0)
    {
        obj = obj_koopa_res
        image_index = 94
    }
    else
    {
        obj = obj_koopa_red_res
        image_index = 95
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 233), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    if (global.buzzy == 0)
    {
        obj = obj_buzzybeetle_res
        image_index = obj_panel_expand.img_buzzy
    }
    else
    {
        obj = obj_buzzybeetle_b_res
        image_index = obj_panel_expand.img_buzzy_shell
    }
    mask_index = spr_circle_mask7_3
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 205), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    obj = obj_ground
    image_index = 125
    mask_index = spr_circle_mask7_4
    value = 3
    disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 156), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    if (global.spiny == 0)
    {
        obj = obj_spiny_res
        image_index = 127
    }
    else
    {
        obj = obj_spiny_shell_res
        image_index = 89
    }
    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 129), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    obj = obj_blooper_res
    image_index = 23
    mask_index = spr_circle_mask7_6
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 144), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    if (global.cheepcheep == 0)
    {
        obj = obj_cheepcheep_res
        image_index = 38
    }
    else
    {
        obj = obj_cheepcheep2_res
        image_index = 39
    }
    mask_index = spr_circle_mask7_7
    value = 6
}

