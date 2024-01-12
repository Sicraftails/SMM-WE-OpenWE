type = 3
sprite_index = spr_panel_circle_7
image_index = 3
obj_panel_expand.header = 3
obj_header.page = 12
posicion = 12
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    obj = obj_onoffblock_res
    image_index = 15
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 15
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    if (global.onoff == 0)
    {
        obj = obj_onoffplatform_res
        image_index = 13
    }
    else
    {
        obj = obj_onoffplatform_blue_res
        image_index = 14
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 233), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    obj = obj_ground
    image_index = 171
    mask_index = spr_circle_mask7_3
    disabled = 1
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 205), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    obj = obj_firebar_res
    image_index = 167
    mask_index = spr_circle_mask7_4
    value = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 156), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    obj = obj_oneway_res
    image_index = 105
    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 129), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    obj = obj_cinta_res
    if (global.cintas == 0)
        image_index = 42
    else
        image_index = 40
    mask_index = spr_circle_mask7_6
    value = 5
	disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 144), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    obj = obj_rails_res
    image_index = 173
    mask_index = spr_circle_mask7_7
    value = 6
	disabled = 1
}
