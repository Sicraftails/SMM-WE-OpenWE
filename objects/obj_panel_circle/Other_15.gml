type = 2
sprite_index = spr_panel_circle
image_index = 2
obj_panel_expand.header = 2
obj_header.page = 5
posicion = 5
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    if (global.floruga == 0)
    {
        obj = obj_floruga_res
        image_index = 158
    }
    else
    {
        obj = obj_floruga_angry_res
        image_index = 159
    }
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = image_index
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_boo_res
    image_index = 28
    mask_index = spr_circle_mask_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 231), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_podoboo_res
    image_index = 114
    mask_index = spr_circle_mask_3
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    if (global.bobomb == 0){
        obj = obj_bobomb_res
		image_index = 25
	}
    else{
        obj = obj_bobomb_ready_res
		image_index = 27
	}
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 156), obj_card_circle))
{
    obj = obj_drybones_res
    image_index = 56
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    obj = obj_ground
    image_index = 58
    mask_index = spr_circle_mask_6
    disabled = 1
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 131), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_magikoopa_res
    image_index = 145
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_pokey_res
    image_index = obj_panel_expand.img_pokey
    mask_index = spr_circle_mask_8
    value = 7
}
