type = 3
sprite_index = spr_panel_circle
image_index = 3
obj_panel_expand.header = 3
obj_header.page = 10
posicion = 10
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    obj = obj_key_res
    image_index = 146
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = 146
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    switch global.door
    {
        case 0:
            obj = obj_door_res
            image_index = 54
            if (instance_number(obj_door_res) > 3)
                disabled = 1
            break
        case 1:
            obj = obj_door_switch_res
            image_index = 55
            if (instance_number(obj_door_switch_res) > 3)
                disabled = 1
            break
        case 2:
            obj = obj_door_lock_res
            image_index = 147
            if (instance_number(obj_door_lock_res) > 3)
                disabled = 1
    }

    mask_index = spr_circle_mask_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 231), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    if (global.pblock == 0)
    {
        obj = obj_pblock_res
        image_index = 154
    }
    else
    {
        obj = obj_pblock2_res
        image_index = 182
    }
    mask_index = spr_circle_mask_3
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    obj = obj_pswitch_res
    image_index = 117
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 156), obj_card_circle))
{
    obj = obj_pow_res
    image_index = 115
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    if (global.spring == 0)
    {
        obj = obj_spring_res
        image_index = 128
    }
    else
    {
        obj = obj_spring_land_res
        image_index = 129
    }
    mask_index = spr_circle_mask_6
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 131), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_vine_res
    image_index = 149
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_arrow_res
    image_index = 1
    mask_index = spr_circle_mask_8
    value = 7
}
