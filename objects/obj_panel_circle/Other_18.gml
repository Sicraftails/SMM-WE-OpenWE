type = 2
sprite_index = spr_panel_circle_7
image_index = 2
obj_panel_expand.header = 2
obj_header.page = 8
posicion = 8
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    obj = obj_ground
    image_index = 188
    mask_index = spr_circle_mask7_1
    value = 0
    disabled = 1
    other.image_selected = 188
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    obj = obj_ground
    image_index = 189
    mask_index = spr_circle_mask7_2
    value = 1
    disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 233), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    obj = obj_ground
    image_index = 194
    mask_index = spr_circle_mask7_3
    value = 2
    disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 205), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    obj = obj_ground
    image_index = 190
    mask_index = spr_circle_mask7_4
    value = 3
    disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 156), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    obj = obj_ground
    image_index = 193
    mask_index = spr_circle_mask7_5
    value = 4
    disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 129), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    obj = obj_ground
    image_index = 192
    mask_index = spr_circle_mask7_6
    value = 5
    disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 144), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    obj = obj_ground
    image_index = 191
    mask_index = spr_circle_mask7_7
    value = 6
    disabled = 1
}
