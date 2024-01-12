var cont, i, item;
if (ds_list_size(my_list) > 99)
    cont = 99
else
    cont = ds_list_size(my_list)
for (i = 0; i < cont; i++)
{
    item = instance_create((camera_get_view_x(view_get_camera(0)) + pos_x), (camera_get_view_y(view_get_camera(0)) + pos_y), obj_gb_button)
    item.texto = ds_list_find_value(my_list, i)
    if (list_post == 2)
    {
        pos_x = 38
        pos_y += 52
        list_post = 0
        cont_scroll++
    }
    else
    {
        list_post++
        pos_x += 104
    }
}

