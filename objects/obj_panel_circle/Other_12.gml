type = 1
sprite_index = spr_panel_circle
image_index = 1
obj_panel_expand.header = 1
obj_header.page = 2
posicion = 2
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 53), obj_card_circle))
{
    if (global.icecoin == 1)
    {
        obj = obj_icecoin_res
        image_index = 150
    }
    else
    {
        obj = obj_coin_res
        image_index = 46
    }
    mask_index = spr_circle_mask10_1
    value = 0
    other.image_selected = image_index
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 209), (camera_get_view_y(view_get_camera(0)) + 63), obj_card_circle))
{
    switch global.coin10
    {
        case 0:
            obj = obj_coin10_res
            image_index = 47
            break
        case 1:
            obj = obj_coin30_res
            image_index = 48
            break
        case 2:
            obj = obj_coin50_res
            image_index = 49
            break
    }

    mask_index = spr_circle_mask10_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 229), (camera_get_view_y(view_get_camera(0)) + 91), obj_card_circle))
{
    obj = obj_pink_coin_res
    image_index = 148
    mask_index = spr_circle_mask10_3
    value = 2
    if (instance_number(obj_pink_coin_res) > 4)
        disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 229), (camera_get_view_y(view_get_camera(0)) + 123), obj_card_circle))
{
        obj = obj_mushroom_res
        image_index = 96
    mask_index = spr_circle_mask10_4
    value = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 209), (camera_get_view_y(view_get_camera(0)) + 151), obj_card_circle))
{
    obj = obj_fireflower_res
    image_index = 61
    mask_index = spr_circle_mask10_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 161), obj_card_circle))
{
    obj = obj_cap_res
    image_index = obj_panel_expand.img_cap
    mask_index = spr_circle_mask10_6
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 153), (camera_get_view_y(view_get_camera(0)) + 151), obj_card_circle))
{
    if (global.hen_mushroom == 1)
    {
        obj = obj_hen_mushroom_res
        image_index = 31
    }
    else
    {
        obj = obj_frogsuit_res
        image_index = 184
    }
    mask_index = spr_circle_mask10_7
    value = 6
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 133), (camera_get_view_y(view_get_camera(0)) + 123), obj_card_circle))
{
    obj = obj_star_res
    image_index = 130
    mask_index = spr_circle_mask10_8
    value = 7
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 133), (camera_get_view_y(view_get_camera(0)) + 91), obj_card_circle))
{
    obj = obj_1up_res
    image_index = obj_panel_expand.img_1up
    mask_index = spr_circle_mask10_9
    value = 8
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 153), (camera_get_view_y(view_get_camera(0)) + 63), obj_card_circle))
{
    if (global.yoshi_egg == 0)
    {
        obj = obj_egg_res
        image_index = 59
    }
    else
    {
        obj = obj_egg_red_res
        image_index = 60
    }
    mask_index = spr_circle_mask10_10
    value = 9
}

