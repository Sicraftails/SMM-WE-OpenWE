type = 0
sprite_index = spr_panel_circle
image_index = 0
obj_panel_expand.header = 0
obj_header.page = 1
posicion = 1
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    obj = obj_block_res
    image_index = obj_panel_expand.img_block
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = obj_panel_expand.img_block
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_qblock_res
    image_index = 93
    mask_index = spr_circle_mask_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 231), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_rock_res
    image_index = obj_panel_expand.img_rock
    mask_index = spr_circle_mask_3
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    obj = obj_block_hidden_res
    image_index = obj_panel_expand.img_hidden_block
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 156), obj_card_circle))
{
    obj = obj_donut_res
    image_index = obj_panel_expand.img_donut
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    switch global.noteblock
    {
        case 0:
            obj = obj_noteblock_res
            image_index = 102
            break
        case 1:
            obj = obj_musicblock_res
            image_index = 140
            break
        case 2:
            obj = obj_noteblock_s_res
            image_index = 216
            break
    }

    mask_index = spr_circle_mask_6
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 131), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_nube_res
    image_index = obj_panel_expand.img_cloud_block
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_ice_res
    image_index = 16
    mask_index = spr_circle_mask_8
    value = 7
}

