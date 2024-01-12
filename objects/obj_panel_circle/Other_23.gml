type = 3
sprite_index = spr_panel_circle_7
image_index = 3
obj_panel_expand.header = 3
obj_header.page = 13
posicion = 13
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    obj = obj_bouncycloud_res
    image_index = 218
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 218
}