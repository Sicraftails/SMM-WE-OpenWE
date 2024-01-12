type = 0
sprite_index = spr_panel_circle
image_index = 0
obj_panel_expand.header = 0
obj_header.page = 0
posicion = 0
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    obj = obj_ground
    image_index = obj_panel_expand.img_ground
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = obj_panel_expand.img_ground
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_slopes
    image_index = obj_panel_expand.img_pendiente1
    mask_index = spr_circle_mask_2
    value = 1
    disabled = 1
	other.image_selected = obj_panel_expand.img_pendiente1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 231), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_pipebase_res
    image_index = 221
    mask_index = spr_circle_mask_3
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    obj = obj_tuberia_res
    switch global.tuberia
    {
        case 0:
            image_index = 134
            break
        case 1:
            image_index = 135
            break
        case 2:
            image_index = 136
            break
        default:
            image_index = 137
    }

    mask_index = spr_circle_mask_4
    value = 3
    if (instance_number(obj_tuberia_res) > 10)
        disabled = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 156), obj_card_circle))
{
    obj = obj_pinchos_res
    image_index = obj_panel_expand.img_pinchos
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    obj = obj_mushroom_platform_res
    if (global.mushroom_platform == 0)
        image_index = 90
    else if (global.mushroom_platform == 1)
        image_index = 91
    else if (global.mushroom_platform == 2)
        image_index = 92
    mask_index = spr_circle_mask_6
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 131), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_semisolid_platform1
    if (global.semisolid_platform == 0)
        image_index = 50
    else if (global.semisolid_platform == 1)
        image_index = 51
    else if (global.semisolid_platform == 2)
        image_index = 52
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_puente_res
    image_index = obj_panel_expand.img_puente
    mask_index = spr_circle_mask_8
    value = 7
}

