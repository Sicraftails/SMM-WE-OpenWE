type = 2
sprite_index = spr_panel_circle
image_index = 2
obj_panel_expand.header = 2
obj_header.page = 4
posicion = 4
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 58), obj_card_circle))
{
    if (global.plant == 0)
    {
        obj = obj_pplant_res
        image_index = 116
    }
    else
    {
        obj = obj_plant_fire_res
        image_index = 110
    }
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = image_index
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_muncher_res
    image_index = obj_panel_expand.img_muncher
    mask_index = spr_circle_mask_2
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 231), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_thwomp_res
    image_index = 132
    mask_index = spr_circle_mask_3
    value = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 217), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
    obj = obj_monty_res
    image_index = 97
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_y(view_get_camera(0)) + 156), obj_card_circle))
{
    obj = obj_rocky_res
    image_index = 98
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 142), obj_card_circle))
{
	if global.hammerbro = 0{
    switch global.brothers
    {
        case 0:
            obj = obj_hammerbro_res
            image_index = 86
            break
        case 1:
            obj = obj_firebro_res
            image_index = 222
            break
        case 2:
            obj = obj_icebro_res
            image_index = 223
            break
        default:
            obj = obj_boomerangbro_res
            image_index = 224
    }
	}
	else{
		obj = obj_sledgebro_res
        image_index = 124
	}
    mask_index = spr_circle_mask_6
    value = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 131), (camera_get_view_y(view_get_camera(0)) + 108), obj_card_circle))
{
    obj = obj_chomp_res
    image_index = obj_panel_expand.img_chomp
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 145), (camera_get_view_y(view_get_camera(0)) + 72), obj_card_circle))
{
    obj = obj_spike_res
    image_index = 151
    mask_index = spr_circle_mask_8
    value = 7
}
