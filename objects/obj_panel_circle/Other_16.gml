type = 2
sprite_index = spr_panel_circle_7
image_index = 2
obj_panel_expand.header = 2
obj_header.page = 6
posicion = 6
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    obj = obj_bowser_res
    image_index = 32
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 32
    if (instance_number(obj_bowser_res) > 3)
        disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    obj = obj_bowserjr_res
    image_index = 33
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 233), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    obj = obj_boomboom_res
    image_index = 30
    mask_index = spr_circle_mask7_3
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 205), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    obj = obj_mechakoopa_res
    image_index = 185
    mask_index = spr_circle_mask7_4
    value = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 156), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    obj = obj_angrysun_res
    if (global.modo_noche == 1)
        image_index = 99
    else
        image_index = 131
    mask_index = spr_circle_mask7_5
    value = 4
    if (instance_number(obj_angrysun_res) > 0)
        disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 129), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    obj = obj_lakitu_res
    image_index = 161
    mask_index = spr_circle_mask7_6
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 144), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    if (global.clown == 0)
    {
        obj = obj_clown_res
        image_index = 44
    }
    else
    {
        obj = obj_clown_fire_res
        image_index = 45
    }
    mask_index = spr_circle_mask7_7
    value = 6
}
