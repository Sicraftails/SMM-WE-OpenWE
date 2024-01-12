type = 3
sprite_index = spr_panel_circle_7
image_index = 3
obj_panel_expand.header = 3
obj_header.page = 9
posicion = 9
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    obj = obj_soplete_res
    if (global.soplete == 0)
        image_index = 166
    else
        image_index = 43
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 166
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    if (global.bulletbill_base == 0)
    {
        obj = obj_bullebill_base_res
        image_index = obj_panel_expand.img_bullet
    }
    else
    {
        obj = obj_bullebill_base_red_res
        image_index = 7
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 233), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    if (global.billbanzai == 0)
    {
        obj = obj_billbanzai_res
        image_index = obj_panel_expand.img_billbanzai
    }
    else
    {
        obj = obj_billbanzai_red_res
        image_index = 4
    }
    mask_index = spr_circle_mask7_3
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 205), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    if (global.cannon == 0)
    {
        obj = obj_cannon_res
        image_index = obj_panel_expand.img_cannon
    }
    else
    {
        obj = obj_cannon_red_res
        image_index = 157
    }
    mask_index = spr_circle_mask7_4
    value = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 156), (camera_get_view_y(view_get_camera(0)) + 150), obj_card_circle))
{
    switch global.estalactita
    {
        case 0:
            obj = obj_mini_icicle_res
            image_index = 213
            break
        case 1:
            obj = obj_mini_icicle2_res
            image_index = 214
            break
        case 2:
            obj = obj_icicle_res
            image_index = 138
            break
        case 3:
            obj = obj_icicle2_res
            image_index = 139
            break
    }

    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 129), (camera_get_view_y(view_get_camera(0)) + 111), obj_card_circle))
{
    if (global.foo == 0)
    {
        obj = obj_torbellino_res
        image_index = 133
    }
    else
    {
        obj = obj_foo_res
        image_index = 215
    }
    mask_index = spr_circle_mask7_6
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 144), (camera_get_view_y(view_get_camera(0)) + 74), obj_card_circle))
{
    obj = obj_checkpoint_res
    image_index = 37
    mask_index = spr_circle_mask7_7
    if (instance_number(obj_checkpoint_res) > 0)
        disabled = 1
    value = 6
}
